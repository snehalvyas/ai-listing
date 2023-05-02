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
        Schema::create('ai_tools_suggestions', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->tinyText('suggestion');
            $table->foreignId('ai_tool_id')->references('id')->on('ai_tools')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ai_tools_suggestions');
    }
};
