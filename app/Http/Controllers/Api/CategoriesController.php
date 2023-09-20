<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AiTools;
use App\Models\Categories;
use App\Models\ParentCategory;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if ($request->search==''){
            $categories= Categories::select('slug as value','category as label')->withCount('toolsCat')->where('status',1)->get();
            return [['label'=> "Categories",'options'=>$categories]];
        }else{
            $array=[];
            $search = $request->search;
            $categories= Categories::select('slug as value','category as label')->withCount('toolsCat')->where('status',1)->where('category','like',"%{$search}%")->get();

            if($categories->count()>0){
                $catOption = ['label'=> "Categories",'options'=>$categories];
                $array[]=$catOption;
            }
            $tools= AiTools::select('slug as value','tool_name as label','slug as category')->with('categories',function ($q){
                return $q->with('categories');
            })->where('status',1)->where('tool_name','like',"%{$search}%")->get();

            if($tools->count()>0){
                $toolsOption = ['label'=> "Tools",'options'=>$tools];
                $array[]=$toolsOption;
            }
            return $array;
        }

    }
    public function get(){
        return Categories::select('id as value','category as label','icon','slug')->where('status',1)->get();
    }
    public function allCat(){
        return ParentCategory::select('id as value','parent_category as label','id')->where('status',1)->with('categories',function ($q){
           return $q->select('id as value','category as label','icon','slug','parent_id')->where('status',1)->withCount('toolsCat');
        })->get();
//        return Categories::select('id as value','category as label','icon','slug')->where('status',1)->limit(15)->get();
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
        //
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
        //
    }
}
