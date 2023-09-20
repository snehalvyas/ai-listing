<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Categories;
use App\Models\News;
use App\Models\NewsUserFavourite;
use Illuminate\Http\Request;

class NewsFavouriteController extends Controller
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
            ->withCount(['userFavourites','allUserfavourites'])->when(!empty($sort),function ($q)use ($sort){
                if (strtolower($sort)=='featured'){
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
            })->with(['userFavourites','allUserfavourites'])->whereHas('userFavourites',function ($q){
                return $q->whereUserId(auth()->id());
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
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($request->post('slug')!='') {
            $news = News::select('id')->where('id', $request->post('slug'))->first();
            if ($news) {
                $AiNewsFav = NewsUserFavourite::where('user_id', auth()->id())->where('news_id', $news->id)->first();
                if (!$AiNewsFav) {
                    $userfave = new NewsUserFavourite();
                    $userfave->user_id = auth()->id();
                    $userfave->news_id = $news->id;
                    $userfave->save();
                    return ['success' => true, 'msg' => "Saved to favourites","status"=>1];
                } else {
                    $this->destroy($AiNewsFav->id);
                    return ['success' => true, 'msg' => "Removed from favourites","status"=>0];
                }
            }
        }
        return ['success' => false, 'msg' => "News not found"];

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
        $NewsFav= NewsUserFavourite::find($id);
        $NewsFav->delete();
    }
}
