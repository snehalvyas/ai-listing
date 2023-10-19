<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AiToolReviewLikeDislike;
use App\Models\AiToolReviews;
use App\Models\AiTools;
use App\Models\AiToolsUserFavourites;
use Illuminate\Http\Request;

class AitoolReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public $successStatus = 200;

    public function index()
    {
        //
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
        if ($request->post('rating')!=''&&$request->post('rating')>0) {
            $tool = AiTools::select('id')->where('slug', $request->post('slug'))->first();
            if ($tool->myReview==null) {
                $rating = AiToolReviews::create(['ai_tool_id' => $tool->id, 'user_id' => auth()->id(), 'star' => $request->post('rating'), 'review' => trim($request->post('review'))]);
//                if ($rating) {
                    return response()->json(['success' => true, "data" => $rating], $this->successStatus);
//                }
            }else{
                return response()->json(['success'=>false]);

            }
        }
        return response()->json(['success'=>false]);


    }
    public function reviewLikeDislike(Request $request){
        if ($request->post('value')!=''&&$request->post('id')!='') {
            $AiToolReviews = AiToolReviews::find($request->post('id'));
            if ($AiToolReviews) {
                $LikeDislike = AiToolReviewLikeDislike::where('user_id',auth()->id())->where('review_id',$AiToolReviews->id)->first();

                if ($LikeDislike==null){
                    $LikeDislike =new AiToolReviewLikeDislike();
                    $LikeDislike->review_id = $AiToolReviews->id;
                    $LikeDislike->user_id = auth()->id();
                }
                $LikeDislike->like = $request->value;
                $LikeDislike->save();


                    return response()->json(['success' => true], $this->successStatus);

            }
        }
        return response()->json(['success'=>false]);

    }
    /**
     * Display the specified resource.
     */
    public function show(string $slug)
    {
        $aiTool = AiTools::select('id')->where('slug',$slug)->first();
        $AiToolReviews= AiToolReviews::where('user_id',auth()->id())->where('ai_tool_id',$aiTool->id)->count();
        $AiToolFav= AiToolsUserFavourites::where('user_id',auth()->id())->where('ai_tool_id',$aiTool->id)->count();
//        if ($AiToolReviews>0){
//            return true;
//        }
       return ['myReview'=>($AiToolReviews>0?true:false),'myFav'=>($AiToolFav>0?true:false)];
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
        //
    }
}
