<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AiTools;
use App\Models\AiToolsUserFavourites;
use App\Models\Categories;
use App\Models\Feature;
use App\Models\PricingPlan;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AitoolFavouriteController extends Controller
{
    public $successStatus = 200;

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $type= $request->type;
        $value= $request->value;
        $perPage= $request->perPage??12;

        $data =AiTools::select('id','tool_name','short_description','starting_price','website_url','verified','slug',\DB::raw("CONCAT('".url('storage/uploads/ai_tools/')."','/',image) AS image"))
            ->withCount(['categories','features','review','pricingPlans','favourites','allUserfavourites','myReview'])
            ->with('categories',function ($q) {
                return $q->select('category_id', 'ai_tool_id')->with(['categories' => function ($q) {
                    return $q->select('id', 'category', 'icon','slug');
                }]);
            })
//            ->with('features',function ($q){
//                return $q->select('id','ai_tool_id','feature_id')->with('featureMaster',function ($q){
//                    return $q->select('id','feature','icon')->where('status',1);
//                });
//            })
            ->with('pricingPlans',function ($q){
                return $q->select('id','ai_tool_id','pricing_plan_id')->with('pricingPlanMaster',function ($q){
                    return $q->select('id','plan','icon')->where('status',1);
                });
            })->with('features',function ($q){
                return $q->select('id','ai_tool_id','feature_id')->with('featureMaster',function ($q){
                    return $q->select('id','feature','icon')->where('status',1);
                });
            })->with(['avgRating','favourites','allUserfavourites'=>function($q){
                return $q->select("id","user_id","ai_tool_id");
            }])->whereHas('favourites',function ($q){
                return $q->whereUserId(auth()->id());
            })->when(!empty($type),function ($q) use ($type,$value){
                if ($type=='category'){
                    $category=Categories::where('slug',$value)->where('status',1)->first();

                    if ($category!=null){
                        $categoryId=$category->id;
                        return $q->whereHas('categories',function ($q) use ($categoryId){
                            return $q->whereCategoryId($categoryId);
                        });
                    }

                }elseif($type=='tool'){
                    $AiTool=AiTools::where('slug',$value)->where('status',1)->with('categories')->first();

                    if ($AiTool!=null){
                        $categoryIds=$AiTool->categories->pluck('category_id');
                        return $q->whereHas('categories',function ($q) use ($categoryIds){
                            return $q->whereIn('category_id',$categoryIds);
                        });
                    }
                }
            })
            ->orderBy('id','DESC')
            ->paginate($perPage);
        return response()->json($data, $this->successStatus);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($request->post('slug')!='') {
            $aiTool = AiTools::select('id')->where('slug', $request->post('slug'))->first();
            if ($aiTool) {
                $AiToolFav = AiToolsUserFavourites::where('user_id', auth()->id())->where('ai_tool_id', $aiTool->id)->first();

                if (!$AiToolFav) {
                    $userfave = new AiToolsUserFavourites();
                    $userfave->user_id = auth()->id();
                    $userfave->ai_tool_id = $aiTool->id;
                    $userfave->save();
                    $response= ['success' => true, 'msg' => "Saved to favourites","status"=>1];
                } else {
                    $this->destroy($AiToolFav->id);
                    $response= ['success' => true, 'msg' => "Removed from favourites","status"=>0];
                }
                $aiTool =AiTools::select('id','tool_name','short_description','starting_price','website_url','verified','slug',\DB::raw("CONCAT('".url('storage/uploads/ai_tools/')."','/',image) AS image"))
                    ->withCount(['categories','features','review','pricingPlans','allUserfavourites','favourites'])
                    ->with('allUserfavourites',function($q){
                        return $q->select("id","user_id","ai_tool_id");
                    })->with('categories',function ($q) {
                        return $q->select('category_id', 'ai_tool_id')->with(['categories' => function ($q) {
                            return $q->select('id', 'category', 'icon','slug');
                        }]);
                    })
                    ->with('features',function ($q){
                        return $q->select('id','ai_tool_id','feature_id')->with('featureMaster',function ($q){
                            return $q->select('id','feature','icon')->where('status',1);
                        });
                    })
                    ->with('pricingPlans',function ($q){
                        return $q->select('id','ai_tool_id','pricing_plan_id')->with('pricingPlanMaster',function ($q){
                            return $q->select('id','plan','icon')->where('status',1);
                        });
                    })
                    ->with('avgRating')
                    ->where('id',$aiTool->id)->first();
                 $response['data']=$aiTool;
                return $response;

            }
        }
        return ['success' => false, 'msg' => "Tool not found"];

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $AiToolFav= AiToolsUserFavourites::find($id);
        $AiToolFav->delete();
    }
}
