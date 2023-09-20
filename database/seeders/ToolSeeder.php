<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ToolSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        foreach (range(1, 100) as $index) {

            DB::table('ai_tools')->insert([
                'tool_name' => Str::random(10),
                'short_description' => Str::random(100),
                'tool_description' => "<p>A versatile video creation wizard, effortlessly automating scripting, editing, and publishing while transforming text, voice, and photos into vibrant videos, with access to expansive media libraries and the power to convert audio files into dynamic content.</p>",
                'starting_price' => 'starts from $20/mo',
                'created_by' => 1,
                'updated_by' => 1,
                'status' => 1,
                'created_at' => date('Y-m-d H:i:s'),
            'email_link' => Str::random(10).'@gmail.com',
//            'password' => Hash::make('password'),
            ]);
        }
    }
}
