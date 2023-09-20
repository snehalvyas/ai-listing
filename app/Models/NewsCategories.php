<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsCategories extends Model
{
    use HasFactory;
    public function newsCategories(){
        return $this->hasOne(Categories::class, 'id', 'category_id');
    }
}
