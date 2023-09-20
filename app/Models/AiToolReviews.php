<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AiToolReviews extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable = array('star','review','ai_tool_id','user_id','created_at','updated_at');
    public function likeDislike(){
        return $this->hasMany(AiToolReviewLikeDislike::class, 'review_id', 'id');
    }
    public function getCreatedAtAttribute($value)
    {
        return date('M d Y',strtotime($value));
    }
    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
