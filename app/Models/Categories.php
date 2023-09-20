<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;
    public function setCategoryAttribute($value)
    {
        $this->attributes['category'] = $value;
        $this->attributes['slug'] = \Str::slug($value);
    }
    public function parent(){
        return $this->hasOne(ParentCategory::class, 'id', 'parent_id');
    }
    public function toolsCat(){
        return $this->hasMany(AiToolCategories::class, 'category_id', 'id');
    }
}
