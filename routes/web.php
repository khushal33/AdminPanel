<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['auth','admin']],function(){
    Route::get('/admin', function () {
    return view('dash.admin');
});
     
    Route::resource('admin','AdminController');
     Route::resource('/reg','RegController');
     Route::post('/store','RegController@store');

});


Route::group(['middleware' => ['auth','subadmin']],function(){
    Route::get('/subadmin', function () {
    return view('subadmin.subadmin');
});
     
    Route::resource('subadmin','SubadminController');
    Route::resource('/subreg','SubregController');
    Route::post('/store1','SubregController@store');

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

 Route::middleware(['auth'])->group(function(){
     
     
      Route::get('/edit','CreateController@edit');    
    Route::resource('user','CreateController'); 
    
     
 });

