<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AiToolFeatures extends Model
{
    use HasFactory;
    public function featureMaster(){
        return $this->hasOne(Feature::class, 'id', 'feature_id');
    }
}
