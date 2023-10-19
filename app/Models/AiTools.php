<?php

namespace App\Models;;

use App\Traits\CreatedUpdatedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AiTools extends Model
{
    use HasFactory,CreatedUpdatedBy;

    protected $fillable=[
        'tool_name',
        'website_url',
        'tool_description',
        'short_description',
        'slug',
        'image',
        'insta_url',
        'fb_url',
        'twitter_url',
        'youtube_url',
        'total_views',
        'video_review',
        'email_link',
        'verified',
        'associated_with_product',
        'starting_price',
        'created_by',
        'updated_by',
        'status',
    ];
    public function setToolNameAttribute($value)
    {
        $this->attributes['tool_name'] = $value;
        $this->attributes['slug'] = \Str::slug($value);
    }
    public function getCreatedAtAttribute($value)
    {
        return date('M d Y',strtotime($value));
    }
//    protected static function boot() {
//        parent::boot();
//
//        static::creating(function ($question) {
//            $question->slug = \Str::slug($question->tool_name);
//        });
//    }
    public function categories(){
        return $this->hasMany(AiToolCategories::class, 'ai_tool_id', 'id');
    }
    public function features(){
        return $this->hasMany(AiToolFeatures::class, 'ai_tool_id', 'id');
    }
    public function pricingPlans(){
        return $this->hasMany(AiToolPricingPlan::class, 'ai_tool_id', 'id');
    }
    public function favourites(){
        $userId=getLoginId();

        return $this->hasMany(AiToolsUserFavourites::class, 'ai_tool_id', 'id')->where('user_id',$userId);
    }
    public function allUserfavourites(){
        return $this->hasMany(AiToolsUserFavourites::class, 'ai_tool_id', 'id');
    }
    public function myReview(){
        $userId=getLoginId();

        return $this->hasOne(AiToolReviews::class, 'ai_tool_id', 'id')->where('user_id',$userId);
    }
    public function review(){
        return $this->hasMany(AiToolReviews::class, 'ai_tool_id', 'id')->orderBy('id','Desc');
    }
    public function reviewRows()
    {
        return $this->hasManyThrough('ReviewRow', 'Review');
    }
    public function avgRating(){
        return $this->review()
            ->selectRaw('round(avg(star)) as rating, ai_tool_id')
            ->groupBy('ai_tool_id');
    }
}
