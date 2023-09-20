<?php

namespace App\Http\Controllers;

use App\Models\ParentCategory;
use Illuminate\Http\Request;
use App\Models\Categories;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Categories::orderBy('id','DESC')->get();
        return view('admin.categories.index',compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $parent = ParentCategory::where('status',1)->orderBy('id','DESC')->get();
        return view('admin.categories.form',compact('parent'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'category' => 'required|max:255|unique:categories',
            'parent_id' => 'required|numeric',
        ]);
        $categories = new Categories();
        $categories->parent_id=$request->parent_id;
        $categories->category=$request->category;
        $categories->icon=$request->icon;
        $categories->status=($request->status==1?1:0);
        $categories->save();
        return to_route('admin.categories.index')->with('success','Created successfully.');
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
    public function edit(Categories $categories,$id)
    {
        $categories = Categories::find($id);
        $parent = ParentCategory::where('status',1)->orderBy('id','DESC')->get();
        return view('admin.categories.form',compact('categories','parent'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

        $validated = $request->validate([
            'category' => 'required|max:255|unique:categories,category,'.$id,
            'parent_id' => 'required|numeric',
        ]);
        $categories = Categories::find($id);
        $categories->parent_id=$request->parent_id;
        $categories->category=$request->category;
        $categories->icon=$request->icon;
        $categories->status=($request->status==1?1:0);
        $categories->update();
        return to_route('admin.categories.index')->with('success','Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $categories = Categories::find($id);
        $categories->delete();
        return to_route('admin.categories.index')->with('success','Deleted successfully.');

    }
    public function change_status(Request $request){
        $categories=Categories::findOrFail($request->id);
        $categories->status = ($categories->status==0?1:0);
        $categories->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
    public function get(){
        return Categories::select('id as value','category as label','icon')->where('status',1)->get();
    }
}
