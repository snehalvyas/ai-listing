<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AiToolCategories extends Model
{
    use HasFactory;
    public function categories(){
        return $this->hasOne(Categories::class, 'id', 'category_id');
    }
}
