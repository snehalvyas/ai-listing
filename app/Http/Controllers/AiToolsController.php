<?php

namespace App\Http\Controllers;

use App\Models\AiToolCategories;
use App\Models\AiToolFeatures;
use App\Models\AiToolPricingPlan;
use App\Models\AiTools;
use App\Models\Categories;
use App\Models\Feature;
use App\Models\PricingPlan;
use Illuminate\Http\Request;

class AiToolsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(AiTools $aiTools)
    {
        $aiTools=$aiTools->orderBy('id','DESC')->paginate(50);
        return view('admin.ai_tools.index',compact('aiTools'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Categories::where('status',1)->get();
        $features = Feature::where('status',1)->get();
        $pricing_plans = PricingPlan::where('status',1)->get();
        return view('admin.ai_tools.form',compact('categories','features','pricing_plans'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request,AiTools $aiTools)
    {
        $validated = $request->validate([
            'tool_name' => 'required|max:255',
            'website_url' => 'required|url',
            'tool_description' => '',
            'short_description' => '',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'insta_url' => 'nullable|url',
            'fb_url' => 'nullable|url',
            'twitter_url' => 'nullable|url',
            'youtube_url' => 'nullable|url',
            'video_review' => 'nullable|url',
            'email_link' => '',
            'verified' => '',
            'associated_with_product' => '',
            'starting_price' => '',
        ]);
//        $validated['verified']=($validated['verified']==1?1:0);
        if ($request->hasFile('image')) {
            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/ai_tools', request()->file('image'));
            $validated['image'] = $request->file('image')->hashName();
        }
        $aiTools->fill($validated);
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
        return to_route('admin.ai_tools.index')->with('success','Created successfully.');

    }


    /**
     * Display the specified resource.
     */
    public function show(AiTools $aiTools)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AiTools $aiTool)
    {
        $categories = Categories::where('status',1)->get();
        $features = Feature::where('status',1)->get();
        $pricing_plans = PricingPlan::where('status',1)->get();
        return view('admin.ai_tools.form',compact('categories','features','pricing_plans','aiTool'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, AiTools $aiTool)
    {
        $aiTools= $aiTool;
        $validated = $request->validate([
            'tool_name' => 'required|max:255',
            'website_url' => 'required|url',
            'tool_description' => '',
            'short_description' => '',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'insta_url' => 'nullable|url',
            'fb_url' => 'nullable|url',
            'twitter_url' => 'nullable|url',
            'youtube_url' => 'nullable|url',
            'video_review' => 'nullable|url',
            'email_link' => '',
            'verified' => '',
            'associated_with_product' => '',
            'starting_price' => '',
        ]);
//        $validated['verified']=($validated['verified']==1?1:0);
        if ($request->hasFile('image')) {
            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/ai_tools', request()->file('image'));
            $validated['image'] = $request->file('image')->hashName();
        }

        $aiTools->fill($validated);
        $aiTools->save();
        if (isset($request->categories)){
            $categories=AiToolCategories::where('ai_tool_id',$aiTools->id)->whereNotIn('category_id',$request->categories)->delete();
            $dbCategories = $aiTools->categories->pluck('category_id')->toArray();
            foreach ($request->categories as $category){
                if (!in_array($category,$dbCategories)){
                    $cat = new AiToolCategories();
                    $cat->category_id =$category;
                    $cat->ai_tool_id =$aiTools->id;
                    $cat->save();
                }

            }
        }
        if (isset($request->features)){
            $features=AiToolFeatures::where('ai_tool_id',$aiTools->id)->whereNotIn('feature_id',$request->features)->delete();
            $dbFeatures = $aiTools->features->pluck('feature_id')->toArray();
            foreach ($request->features as $f){
                if (!in_array($f,$dbFeatures)) {
                    $feature = new AiToolFeatures();
                    $feature->feature_id = $f;
                    $feature->ai_tool_id = $aiTools->id;
                    $feature->save();
                }
            }
        }
        if (isset($request->pricing_plans)){
            $pricing_plans=AiToolPricingPlan::where('ai_tool_id',$aiTools->id)->whereNotIn('pricing_plan_id',$request->pricing_plans)->delete();
            $dbPlan = $aiTools->pricingPlans->pluck('pricing_plan_id')->toArray();
            foreach ($request->pricing_plans as $plan){

                if (!in_array($plan,$dbPlan)) {
                    $cat = new AiToolPricingPlan();
                    $cat->pricing_plan_id = $plan;
                    $cat->ai_tool_id = $aiTools->id;
                    $cat->save();
                }
            }
        }
        return to_route('admin.ai_tools.index')->with('success','Tool updated successfully.');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(AiTools $aiTool)
    {
        if ($aiTool->image!=''){
            \Storage::delete('public/uploads/ai_tools/'.$aiTool->image);
        }
        $aiTool->delete();
        AiToolCategories::where('ai_tool_id',$aiTool->id)->delete();
        AiToolFeatures::where('ai_tool_id',$aiTool->id)->delete();
        AiToolPricingPlan::where('ai_tool_id',$aiTool->id)->delete();
        return to_route('admin.ai_tools.index')->with('success','Deleted successfully.');
    }
    public function change_status(Request $request){
        $aiTools=AiTools::findOrFail($request->id);
        $aiTools->status = ($aiTools->status==0?1:0);
        $aiTools->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
}
