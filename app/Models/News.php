<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $fillable=[
        'title',
        'description',
        'content_link',
        'image',
        'is_featured',
        'created_by',
        'status',
    ];
//    protected static function boot() {
//        parent::boot();
//
//        static::creating(function ($model) {
//            $model->created_by = is_object(auth()) ? auth()->id() : 1;
////            $model->updated_by = NULL;
//        });
//
////        static::updating(function ($model) {
////            $model->updated_by = is_object(Auth::guard(config('app.guards.web'))->user()) ? Auth::guard(config('app.guards.web'))->user()->id : 1;
////        });
//    }
   public function categories(){
       return $this->hasMany(NewsCategories::class, 'news_id', 'id');
   }
}
