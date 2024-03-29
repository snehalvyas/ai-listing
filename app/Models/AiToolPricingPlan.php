<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AiToolPricingPlan extends Model
{
    use HasFactory;
    protected $table='ai_tool_pricing_plan';
    public function pricingPlanMaster(){
        return $this->hasOne(PricingPlan::class, 'id','pricing_plan_id');
    }
}
