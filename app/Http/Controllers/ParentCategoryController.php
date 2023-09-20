<?php

namespace App\Http\Controllers;

use App\Models\ParentCategory;
use Illuminate\Http\Request;

class ParentCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = ParentCategory::orderBy('id','DESC')->get();
        return view('admin.parent_categories.index',compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.parent_categories.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'parent_category' => 'required|unique:parent_categories|max:255',
        ]);
        $parentCategory = new ParentCategory();
        $parentCategory->parent_category=$request->parent_category;
        $parentCategory->status=($request->status==1?1:0);
        $parentCategory->save();
        return to_route('admin.parent_categories.index')->with('success','Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(ParentCategory $parentCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ParentCategory $parentCategory)
    {

        return view('admin.parent_categories.form',compact('parentCategory'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ParentCategory $parentCategory)
    {
        $validated = $request->validate([
            'parent_category' => 'required|max:255|unique:parent_categories,parent_category,'.$parentCategory->id,
        ]);
        $parentCategory->parent_category=$request->parent_category;
        $parentCategory->status=($request->status==1?1:0);
        $parentCategory->update();
        return to_route('admin.parent_categories.index')->with('success','Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ParentCategory $parentCategory)
    {
        $parentCategory->delete();
        return to_route('admin.parent_categories.index')->with('success','Deleted successfully.');

    }
    public function change_status(Request $request){
        $parentCategory=ParentCategory::findOrFail($request->id);
        $parentCategory->status = ($parentCategory->status==0?1:0);
        $parentCategory->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
}
