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
        Schema::create('ai_tools', function (Blueprint $table) {
            $table->id();
            $table->string('tool_name');
            $table->longText('tool_description')->nullable(true);
            $table->text('short_description')->nullable(true);
            $table->string('image')->nullable();
            $table->string('slug')->nullable();
            $table->string('website_url')->nullable();
            $table->string('insta_url')->nullable();
            $table->string('fb_url')->nullable();
            $table->string('twitter_url')->nullable();
            $table->string('youtube_url')->nullable();
            $table->string('email_link',100)->nullable();
            $table->integer('total_views')->nullable(true);
            $table->string('video_review')->nullable(true);
            $table->string('starting_price',100)->nullable();
            $table->boolean('associated_with_product')->default(false);
            $table->boolean('verified')->default(false);
//            $table->index('created_by');
            $table->foreignId('created_by')->references('id')->on('users')->onDelete('cascade');
            $table->foreignId('updated_by')->references('id')->on('users')->onDelete('cascade');
            $table->boolean('status')->default(false);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ai_tools');
    }
};
