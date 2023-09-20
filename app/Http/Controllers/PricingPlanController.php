<?php

namespace App\Http\Controllers;

use App\Models\PricingPlan;
use Illuminate\Http\Request;
//use Illuminate\Http\RedirectResponse;
use Session;
class PricingPlanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pricing_plan = PricingPlan::orderBy('id','DESC')->get();
        return view('admin.pricing_plan.index',compact('pricing_plan'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pricing_plan.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'plan' => 'required|max:255|unique:pricing_plan',
            'icon' => 'required',
        ]);
        $PricingPlan = new PricingPlan();
        $PricingPlan->plan=$request->plan;
        $PricingPlan->icon=$request->icon;
        $PricingPlan->save();
        return to_route('admin.pricing_plan.index')->with('success','Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(PricingPlan $pricingPlan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PricingPlan $pricingPlan)
    {
        return view('admin.pricing_plan.form',compact('pricingPlan'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,PricingPlan $pricingPlan)
    {
        $validated = $request->validate([
            'plan' => 'required|max:255|unique:pricing_plan,plan,'.$pricingPlan->id,
            'icon' => 'required',
        ]);
        $pricingPlan->plan=$request->plan;
        $pricingPlan->icon=$request->icon;
        $pricingPlan->save();
        return to_route('admin.pricing_plan.index')->with('success','Updated Successfully.');
    }
    public function change_status(Request $request){
        $pricingPlan=PricingPlan::findOrFail($request->id);
        $pricingPlan->status = ($pricingPlan->status==0?1:0);
        $pricingPlan->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PricingPlan $pricingPlan)
    {
        $pricingPlan->delete();
        return to_route('admin.pricing_plan.index')->with('success','Deleted successfully.');
    }
}
