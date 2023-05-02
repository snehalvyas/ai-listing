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
    public function setTitleAttribute($value)
    {
        $this->attributes['title'] = $value;
        $this->attributes['slug'] = str_slug($value);
    }
    protected static function boot() {
        parent::boot();

        static::creating(function ($question) {
            $question->slug = \Str::slug($question->tool_name);
        });
    }
    public function categories(){
        return $this->hasMany(AiToolCategories::class, 'ai_tool_id', 'id');
    }
    public function features(){
        return $this->hasMany(AiToolFeatures::class, 'ai_tool_id', 'id');
    }
    public function pricingPlans(){
        return $this->hasMany(AiToolPricingPlan::class, 'ai_tool_id', 'id');
    }
}
