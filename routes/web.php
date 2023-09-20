<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::middleware('auth')->prefix('admin')->name('admin.')->group(function(){
    Route::get('dashboard', [App\Http\Controllers\HomeController::class, 'dashboard'])->name('dashboard');
    Route::resource('pricing-plan', 'App\Http\Controllers\PricingPlanController')->names('pricing_plan');
    Route::get('pricing-plan/change-status/{id}', [App\Http\Controllers\PricingPlanController::class,'change_status'])->name('pricing_plan.change_status');
    Route::resource('features', 'App\Http\Controllers\FeatureController')->names('features');
    Route::get('features/change-status/{id}', [App\Http\Controllers\FeatureController::class,'change_status'])->name('features.change_status');

    Route::resource('contact-us', 'App\Http\Controllers\ContactUsController')->names('contactus');

    Route::resource('parent-categories', 'App\Http\Controllers\ParentCategoryController')->names('parent_categories');
    Route::get('parent-categories/change-status/{id}', [App\Http\Controllers\ParentCategoryController::class,'change_status'])->name('parent_categories.change_status');

    Route::resource('categories', 'App\Http\Controllers\CategoriesController')->names('categories');
    Route::get('categories/change-status/{id}', [App\Http\Controllers\CategoriesController::class,'change_status'])->name('categories.change_status');


    Route::resource('news', 'App\Http\Controllers\NewsController')->names('news');
    Route::get('news/change-status/{id}', [App\Http\Controllers\NewsController::class,'change_status'])->name('news.change_status');
    Route::get('pages/change-status/{id}', [App\Http\Controllers\PageController::class,'change_status'])->name('pages.change_status');
    Route::resource('pages','\App\Http\Controllers\PageController')->names('pages');

    Route::get('profile', [App\Http\Controllers\UserController::class,'profile'])->name('profile');
    Route::post('profile-edit', [App\Http\Controllers\UserController::class,'profile_update'])->name('profile_update');
    Route::post('profile', [App\Http\Controllers\UserController::class,'change_password'])->name('change_password');


    Route::get('users/change-status/{id}', [App\Http\Controllers\UserController::class,'change_status'])->name('users.change_status');
    Route::resource('users','\App\Http\Controllers\UserController')->names('users');

    Route::get('ai-tools/change-status/{id}', [App\Http\Controllers\AiToolsController::class,'change_status'])->name('ai_tools.change_status');
    Route::resource('ai-tools','\App\Http\Controllers\AiToolsController')->names('ai_tools');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
