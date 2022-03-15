<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VoyageController;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\PlusDetailsController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', [WelcomeController::class, 'index']);

Route::resource('/reservation', ReservationController::class)->middleware(['auth']);
Route::resource('/listuser', UsersController::class)->middleware(['auth']);
Route::resource('/voyage', VoyageController::class)->middleware(['auth']);
Route::get('voyage/{id}/resrvation','App\Http\Controllers\VoyageController@resvoyshow')->middleware(['auth']);
Route::get('/reservations/{id}','App\Http\Controllers\ReservationController@resusershow')->middleware(['auth']);
Route::put('updatestatut/{id}','App\Http\Controllers\ReservationController@updatestatut')->middleware(['auth']);
Route::get('/archive','App\Http\Controllers\VoyageController@archive')->middleware(['auth']);
Route::patch('/voyage/{id}/restore','App\Http\Controllers\VoyageController@restore')->middleware(['auth']);
Route::delete('/voyage/{id}/forcedelete','App\Http\Controllers\VoyageController@forcedelete')->middleware(['auth']);
Route::get('/voyage/{id}/destroyimage','App\Http\Controllers\VoyageController@destroyimage')->middleware(['auth']);
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', 'App\Http\Controllers\DashboardController@index')->name('dashboard');
Route::get('redirects','App\Http\Controllers\HomeController@index')->middleware(['auth']);
Route::get('/home','App\Http\Controllers\HomeController@voyage')->middleware(['auth']);