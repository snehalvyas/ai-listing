<?php

namespace App\Http\Controllers;

use App\Models\Feature;
use Illuminate\Http\Request;

class FeatureController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $features = Feature::orderBy('id','DESC')->get();
        return view('admin.features.index',compact('features'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.features.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'feature' => 'required|max:255',
            'icon' => 'required',
        ]);
        $feature = new Feature();
        $feature->feature=$request->feature;
        $feature->icon=$request->icon;
        $feature->save();
        return to_route('admin.features.index')->with('success','Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Feature $feature)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Feature $feature)
    {
        return view('admin.features.form',compact('feature'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Feature $feature)
    {
        $validated = $request->validate([
            'feature' => 'required|max:255',
            'icon' => 'required',
        ]);
        $feature->feature=$request->feature;
        $feature->icon=$request->icon;
        $feature->save();
        return to_route('admin.features.index')->with('success','Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Feature $feature)
    {
        $feature->delete();
        return to_route('admin.features.index')->with('success','Deleted successfully.');
    }
    public function change_status(Request $request){
        $feature=Feature::findOrFail($request->id);
        $feature->status = ($feature->status==0?1:0);
        $feature->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
}
