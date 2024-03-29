<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentCategory extends Model
{
    use HasFactory;
    public function categories(){
        return $this->hasMany(Categories::class, 'parent_id', 'id');
    }
//    protected $table='parent_categories';
}
