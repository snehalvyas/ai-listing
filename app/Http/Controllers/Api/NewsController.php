<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AiTools;
use App\Models\Categories;
use App\Models\Feature;
use App\Models\News;
use App\Models\NewsCategories;
use App\Models\PricingPlan;
use Carbon\Carbon;
use Validator;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use PhpParser\Builder;

class NewsController extends Controller
{
    public $successStatus = 200;
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $time='';
        $sort='';
        $category='';
        $categoryId='';
        if ($request->time!=''&&$request->time!='all-time'&&$request->time!='All Time'){
           $time=$request->time;
        }
        if ($request->sort!=''&&strtolower($request->sort)!='new'){
            $sort=$request->sort;
        }
        if ($request->category!=''&&$request->category!='all'){
            $category=$request->category;
            $categoryId=Categories::where('category',$category)->where('status',1)->first()->id;
        }


        $data = News::select('id','content_link','description','is_featured','title','created_by','created_at as date',\DB::raw("CONCAT('".url('storage/uploads/news/')."','/',image) AS image"))->where('news.status',1)
            ->withCount(['userFavourites','allUserfavourites'])->with(['userFavourites','allUserfavourites'])->when(!empty($time), function ($q) use ($time){

                if ($time=='today'){
                    $date=Carbon::now();
                    return $q->whereDate('created_at',$date);
                }elseif ($time=='this-week'){
                    return $q->whereBetween('created_at',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                }elseif ($time=='this-month'){
                    return $q->whereBetween('created_at',[Carbon::now()->startOfMonth(),Carbon::now()->endOfMonth()]);
                }
            })
            ->when(!empty($sort),function ($q)use ($sort){
                if (strtolower($sort)=='featured'){
                    $date=Carbon::now();
                    return $q->where('is_featured',1);
                }
            })
            ->when(!empty($category),function ($q)use ($categoryId,$category){
                return $q->with('categories',function ($q) {
                    return $q->select('category_id', 'news_id')->with(['newsCategories' => function ($q) {
                        return $q->select('id', 'category', 'icon');
                    }]);
                })->whereHas('categories',function ($q)use ($categoryId,$category){
                    return $q->whereCategoryId($categoryId);
                });
            })
            ->when(empty($category),function ($q){
                return $q->with(['categories'=>function ($q) {
                    return $q->select('category_id', 'news_id')->with(['newsCategories' => function ($q) {
                        return $q->select('id', 'category', 'icon');
                    }]);

                 }]);
            })
            ->with(['addedBy' => function ($query) {
                $query->select('id','role');
            }])->orderBy(($sort=='popular'?'total_views':'id'),'DESC')->paginate(100);
        return response()->json(['data' => $data,'count'=>$data->count()], $this->successStatus);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data['categories'] = Categories::select('id as value','category as label')->where('status',1)->get();
        return response()->json(['data' => $data], $this->successStatus);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = Validator::make($request->all(), [
            'title' => 'required|max:255|unique:news',
            'content_link' => 'required',
//            'categories' => 'required',
            'image' => 'image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => '',
            'is_featured' => '',
        ]);
        if ($validated->fails()) {
            return response()->json(['error'=>$validated->errors()], 401);
        }
        $input= $request->all();

        if ($request->hasFile('image')) {
            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/news', request()->file('image'));
            $input['image'] = $request->file('image')->hashName();
//            $path = $request->file('image')->store('public/news');
        }
        $input['created_by']=auth()->id();
        $input['is_featured']=($request->is_featured==1?1:0);
        $news = News::create($input);

        if (isset($request->categories)){
            foreach ($request->categories as $category){
                $cat = new NewsCategories();
                $cat->category_id =$category;
                $cat->news_id =$news->id;
                $cat->save();
            }
        }
        return response()->json(['success'=>true], $this->successStatus);

    }

    /**
     * Display the specified resource.
     */
    public function getTodayData(){
        $tools= AiTools::whereDate('created_at',date('Y-m-d'))->where('status',1)->count();
        $news= News::whereDate('created_at',date('Y-m-d'))->where('status',1)->count();
        $features= Feature::where('status',1)->get();
        $plans= PricingPlan::where('status',1)->get();
        return ['todayToolCount'=>$tools,'todayNewsCount'=>$news,'features'=>$features,'plans'=>$plans];
    }
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
