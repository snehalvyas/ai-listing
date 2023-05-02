<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ai_tool_pricing_plan', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ai_tool_id')->references('id')->on('ai_tools')->onDelete('cascade');
            $table->foreignId('pricing_plan_id')->references('id')->on('pricing_plan')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ai_tool_pricing_plan');
    }
};
