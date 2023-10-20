<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

//Route::middleware('auth:api')->get('/profile', function (Request $request) {
//    return $request->user();
//});
Route::get('profile', [\App\Http\Controllers\Api\ProfileController::class, 'getUserDetails'])->middleware('auth:api');
Route::post('profile-update', [\App\Http\Controllers\Api\ProfileController::class, 'profileUpdate'])->middleware('auth:api');
Route::post('change-password', [\App\Http\Controllers\Api\ProfileController::class, 'changePassword'])->middleware('auth:api');

Route::middleware('auth:api')->post('logout', [UserController::class, 'logout']);
Route::post('login', [UserController::class, 'login']);
Route::post('sign-up', [UserController::class, 'register']);

Route::resource('multi_search', '\App\Http\Controllers\Api\CategoriesController');
Route::get('categories', [\App\Http\Controllers\Api\CategoriesController::class, 'get']);
Route::get('allCat', [\App\Http\Controllers\Api\CategoriesController::class, 'allCat']);
Route::get('getTodayData', [\App\Http\Controllers\Api\NewsController::class, 'getTodayData']);
Route::get('random-tool', [\App\Http\Controllers\Api\AiToolsController::class, 'random']);

Route::resource('ai-tools','\App\Http\Controllers\Api\AiToolsController',[
    'only' => [
        'index',
        'show',
        'create',
    ]
])->names('ai_tools');

Route::resource('ai-tools','\App\Http\Controllers\Api\AiToolsController',[
    'except' => [
        'index',
        'show',
        'create',
    ]
])->middleware([ 'auth:api'])->names('ai_tools');
Route::resource('news','\App\Http\Controllers\Api\NewsController',[
    'only' => [
        'index',
        'show',
        'create',
    ]
])->names('news');
Route::resource('news','\App\Http\Controllers\Api\NewsController',[
    'except' => [
        'index',
        'show',
        'create',
    ]
])->middleware([ 'auth:api'])->names('news');

Route::resource('review','\App\Http\Controllers\Api\AitoolReviewController')->middleware([ 'auth:api'])->names('review');
Route::post('reviewLikeDislike', [\App\Http\Controllers\Api\AitoolReviewController::class, 'reviewLikeDislike'])->middleware([ 'auth:api']);
Route::resource('ai-tools-favourite','\App\Http\Controllers\Api\AitoolFavouriteController')->middleware([ 'auth:api'])->names('tool_fav');
Route::resource('news-favourite','\App\Http\Controllers\Api\NewsFavouriteController')->middleware([ 'auth:api'])->names('news_fav');
//Route::group(['middleware' => 'auth:api'], function(){
//    Route::post('user-details', [UserController::class, 'userDetails']);
//});
