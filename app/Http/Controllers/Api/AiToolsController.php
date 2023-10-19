<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AiToolCategories;
use App\Models\AiToolFeatures;
use App\Models\AiToolPricingPlan;
use App\Models\AiToolReviews;
use App\Models\AiTools;
use App\Models\Categories;
use App\Models\Feature;
use App\Models\PricingPlan;
use Carbon\Carbon;
use Validator;
use Illuminate\Http\Request;

class AiToolsController extends Controller
{
    public $successStatus = 200;
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $sort = $request->sort;
        $rCategory= $request->category;
        $tool= $request->tool;
        $pricing= $request->pricing;
        $feature= $request->feature;
        $perPage= $request->perPage??12;

//dd($request->get('pricing'));
        $data =AiTools::select('id','tool_name','short_description','starting_price','website_url','verified','slug',\DB::raw("CONCAT('".url('storage/uploads/ai_tools/')."','/',image) AS image"))
            ->withCount(['categories','features','review','pricingPlans','allUserfavourites','favourites','myReview'])
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
            ->when(!empty($pricing),function ($q) use ($pricing){
                $plans=PricingPlan::whereIn('plan',$pricing)->where('status',1)->get()->pluck('id');
//dd($plans);
                if ($plans!=null){
//                    $categoryId=$plans->id;
                    return $q->whereHas('pricingPlans',function ($q) use ($plans){
                        return $q->whereIn('pricing_plan_id',$plans);
                    });
                }
            })
            ->when(!empty($feature),function ($q) use ($feature){
                $features=Feature::whereIn('feature',$feature)->where('status',1)->get()->pluck('id');
//dd($plans);
                if ($features!=null){
//                    $categoryId=$plans->id;
                    return $q->whereHas('features',function ($q) use ($features){
                        return $q->whereIn('feature_id',$features);
                    });
                }
            })
            ->with('avgRating')->when(!empty($rCategory),function ($q) use ($rCategory){
                if (isset($rCategory)){
                    $category=Categories::where('slug',$rCategory)->where('status',1)->first();

                    if ($category!=null){
                        $categoryId=$category->id;
                        return $q->whereHas('categories',function ($q) use ($categoryId){
                            return $q->whereCategoryId($categoryId);
                        });
                    }

                }
//                elseif(isset($tool)){
//                    $AiTool=AiTools::where('slug',$tool)->where('status',1)->with('categories')->first();
//
//                    if ($AiTool!=null){
//                        $categoryIds=$AiTool->categories->pluck('category_id');
//                        return $q->whereHas('categories',function ($q) use ($categoryIds){
//                            return $q->whereIn('category_id',$categoryIds);
//                        });
//                    }
//                }
            })->when(!empty($sort),function ($q)use ($sort){
                if (strtolower($sort)=='verified'){
                    $date=Carbon::now();
                    return $q->where('verified',1);
                }
            })
            ->where('status',1)->orderBy(($sort=='popular'?'total_views':'id'),'DESC')
            ->paginate($perPage);
        return response()->json($data, $this->successStatus);
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data['categories'] = Categories::select('id as value','category as label')->where('status',1)->get();
        $data['features'] = Feature::select('id as value','feature as label')->where('status',1)->get();
        $data['pricingPlans'] = PricingPlan::select('id as value','plan as label')->where('status',1)->get();

        return response()->json(['data' => $data], $this->successStatus);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request,AiTools $aiTools)
    {
        $validated = Validator::make($request->all(), [
            'tool_name' => 'required|max:255|unique:ai_tools',
            'website_url' => 'required|url',
            'tool_description' => '',
            'short_description' => '',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
//            'insta_url' => 'nullable|url',
//            'fb_url' => 'nullable|url',
//            'twitter_url' => 'nullable|url',
//            'youtube_url' => 'nullable|url',
//            'video_review' => 'nullable|url',
//            'email_link' => '',
//            'verified' => '',
            'associated_with_product' => '',
            'starting_price' => '',
        ]);
        if ($validated->fails()) {
            return response()->json(['error'=>$validated->errors()], 401);
        }
//        $validated['verified']=($validated['verified']==1?1:0);
        if ($request->hasFile('image')) {
            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/ai_tools', request()->file('image'));
            $request['image'] = $request->file('image')->hashName();
        }
//dd($request);
       $input= $request->all();
      if ($request->associated_with_product=='No'||$request->associated_with_product=='no'){
          $input['associated_with_product']=0;
      }else{
          $input['associated_with_product']=1;
      }
        $aiTools->fill($input);
        $aiTools->save();
        if (isset($request->categories)){
            foreach ($request->categories as $category){
                $cat = new AiToolCategories();
                $cat->category_id =$category;
                $cat->ai_tool_id =$aiTools->id;
                $cat->save();
            }
        }
        if (isset($request->features)){
            foreach ($request->features as $f){
                $feature = new AiToolFeatures();
                $feature->feature_id =$f;
                $feature->ai_tool_id =$aiTools->id;
                $feature->save();
            }
        }
        if (isset($request->pricing_plans)){
            foreach ($request->pricing_plans as $plan){
                $cat = new AiToolPricingPlan();
                $cat->pricing_plan_id =$plan;
                $cat->ai_tool_id =$aiTools->id;
                $cat->save();
            }
        }
        return response()->json(['success'=>true], $this->successStatus);

//        return to_route('admin.ai_tools.index')->with('success','Created successfully.');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug)
    {
        $aiTool = AiTools::select('*',\DB::raw("CONCAT('".url('storage/uploads/ai_tools/')."','/',image) AS image"))->where('slug',$slug)
            ->withCount(['categories','pricingPlans','review','features','allUserfavourites','favourites','myReview'])
            ->with('features',function ($q){
                return $q->select('id','ai_tool_id','feature_id')->with('featureMaster',function ($q){
                    return $q->select('id','feature','icon')->where('status',1);
                });
            })
            ->with('categories',function ($q){
            return $q->select('id','ai_tool_id','category_id')->with('categories',function ($q){
                return $q->select('id','category','slug','icon')->where('status',1);
            });
        })->with('pricingPlans',function ($q){
            return $q->select('id','ai_tool_id','pricing_plan_id')->with('pricingPlanMaster',function ($q){
                return $q->select('id','plan','icon')->where('status',1);
            });
        })->with('review',function ($q){
            return $q->withCount(['likeDislike as likes_count' => function ($query) {
                $query->where('like', 1);
            },'likeDislike as dislikes_count' => function ($query) {
                    $query->where('like', 0);
                }])->with('user:first_name,last_name,id')->orderBy('id','DESC');
        })->first();

        if($aiTool){
            $aiTool->total_views=$aiTool->total_views+1;
//            $aiTool->updated_by=1;
            $aiTool->save();
            $aiTool->avg_review=$aiTool->review->avg('star');
            $fiveStar =$aiTool->review->where('star',5)->count('star');
            $fourStar =$aiTool->review->where('star',4)->count('star');
            $threeStar =$aiTool->review->where('star',3)->count('star');
            $twoStar =$aiTool->review->where('star',2)->count('star');
            $oneStar =$aiTool->review->where('star',1)->count('star');
            $aiTool->avg_five=($fiveStar>0?round(($fiveStar*100)/$aiTool->review_count):'0');
            $aiTool->avg_four=($fourStar>0?round(($fourStar*100)/$aiTool->review_count):'0');
            $aiTool->avg_three=($threeStar>0?round(($threeStar*100)/$aiTool->review_count):'0');
            $aiTool->avg_two=($twoStar>0?round(($twoStar*100)/$aiTool->review_count):'0');
            $aiTool->avg_one=($oneStar>0?round(($oneStar*100)/$aiTool->review_count):'0');

//        $aiTool->date=Carbon::createFromFormat('Y-m-d H:i:s',$aiTool->created_at)->format('M d');
//        $aiTool->date=$aiTool->created_at->format('F d Y');
//            $aiTool->categories->pluck('category_id')
//           $aiTools = AiTools::

            return $aiTool;
        }
        return response()->json(['success' => false],204);
    }
    /**
    * Return random tool
    */
    public function random()
    {
        $slug= AiTools::select('slug')->where('status',1)->inRandomOrder()->first()->slug;
        return '/tool/'.$slug;
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
//    public function addRating(Request $request, string $slug)
//    {
//if ($request->post('rating')!=''&&$request->post('rating')>0) {
//    $tool = AiTools::select('id')->where('slug', $slug)->first();
//    $rating = AiToolReviews::insert(['ai_tool_id' => $tool->id, 'user_id' => auth()->id(), 'star' => $request->post('rating'), 'review' => $request->post('review')]);
//    if ($rating) {
//        return response()->json(['success' => true, "data" => $rating], $this->successStatus);
//    }
//}
//        return response()->json(['success'=>false]);
//
//
//    }
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
