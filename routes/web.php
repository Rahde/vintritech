<?php

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
    // return view('welcome');
    return view("master");
});

Route::group(["prefix" => "book"], function () {
    Route::get("/featured", "BookController@featured");
    Route::get("/{book_id}", "BookController@detail");
    Route::post("/search", "BookController@search");
});
