<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\News;
use App\Models\NewsCategories;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $news = News::orderBy('id','DESC')->paginate(1);
        return view('admin.news.index',compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Categories::where('status',1)->get();
        return view('admin.news.form',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|max:255',
            'content_link' => 'required',
//            'categories' => 'required',
            'image' => 'image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => '',
            'is_featured' => '',
        ]);
        if ($request->hasFile('image')) {
            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/news', request()->file('image'));
            $validated['image'] = $request->file('image')->hashName();
//            $path = $request->file('image')->store('public/news');
        }
        $validated['created_by']=auth()->id();
        $validated['is_featured']=($request->is_featured==1?1:0);
        $news = News::create($validated);

       if (isset($request->categories)){
           foreach ($request->categories as $category){
               $cat = new NewsCategories();
               $cat->category_id =$category;
               $cat->news_id =$news->id;
               $cat->save();
           }
       }
        return to_route('admin.news.index')->with('success','Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(News $news)
    {
        $categories = Categories::where('status',1)->get();
        return view('admin.news.form',compact('categories','news'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, News $news)
    {
        $validated = $request->validate([
            'title' => 'required|max:255',
            'content_link' => 'required',
//            'categories' => 'required',
            'image' => 'image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => '',
            'is_featured' => '',
        ]);

        if ($request->hasFile('image')) {
            if ($news->image!=''){
                \Storage::delete('public/uploads/news/'.$news->image);
            }

            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/news', request()->file('image'));
            $validated['image'] = $request->file('image')->hashName();
        }

        $validated['is_featured']=($request->is_featured==1?1:0);
        $news->update($validated);
//        $category= (isset($news)?$news->categories->pluck('category_id')->toArray():[]);
//        dd(array_intersect($category,$request->categories));
        if (isset($request->categories)){
            NewsCategories::where('news_id',$news->id)->delete();
            foreach ($request->categories as $category){
                $cat = new NewsCategories();
                $cat->category_id =$category;
                $cat->news_id =$news->id;
                $cat->save();
            }
        }
        return to_route('admin.news.index')->with('success','Created successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(News $news)
    {
        if ($news->image!=''){
            \Storage::delete('public/uploads/news/'.$news->image);
        }
        $news->delete();
        NewsCategories::where('news_id',$news->id)->delete();
        return to_route('admin.news.index')->with('success','Deleted successfully.');
    }
    public function change_status(Request $request){
        $feature=News::findOrFail($request->id);
        $feature->status = ($feature->status==0?1:0);
        $feature->update();
        return response()->json(['success'=>1,'msg'=>'Status changed successfully.']);
    }
}
