<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Page $page)
    {
        $pages=$page->orderBy('id','DESC')->get();
        return view('admin.pages.index',compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.pages.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request,Page $page)
    {
        $validated = $request->validate([
            'page_name' => 'required|max:255|unique:pages',
            'description' => 'required',
        ]);
        $this->save($request,$page);
        return to_route('admin.pages.index')->with('success','Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Page $page)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Page $page)
    {
        return view('admin.pages.form',compact('page'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Page $page)
    {
        $validated = $request->validate([
            'page_name' => 'required|max:255|unique:pages,page_name,'.$page->id,
            'description' => 'required',
        ]);
        $this->save($request,$page);
        return to_route('admin.pages.index')->with('success','Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function save($request,$page){
        $validated = $request->validate([
            'page_name' => 'required|max:255',
            'description' => 'required',
        ]);

        $page->page_name=$request->page_name;
        $page->description=htmlentities($request->description);
        $page->save();
    }
    public function destroy(Page $page)
    {
        $page->delete();
        return back()->with('success','Deleted successfully.');
    }
    public function change_status(Request $request){
        $feature=Page::findOrFail($request->id);
        $feature->status = ($feature->status==0?1:0);
        $feature->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
}
