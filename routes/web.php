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

/*Route::get('/', function () {
    return view('welcome');
});*/

// Pages
Route:: get('/', 'PagesController@index');
//Route:: get('/scholarships', 'PagesController@scholarships');
//Route:: get('/colleges', 'PagesController@colleges');
Route:: get('/about', 'PagesController@about');
//Route:: get('/match/result', 'MatchController@result');

// Scholarship Shows
Route::get('/scholarships/byName', 'ScholarshipsController@byName');
Route::get('/scholarships/byCollege', 'ScholarshipsController@byCollege');
Route::get('/scholarships/byProgram', 'ScholarshipsController@byProgram');
Route::get('/scholarships/byLevel', 'ScholarshipsController@byLevel');
Route::post('/scholarships/insert', 'ScholarshipsController@insert');


// University Shows
Route::get('/colleges/byName', 'UniversityController@byName');
Route::get('/colleges/byRegion', 'UniversityController@byRegion');
Route::get('/colleges/byProvince', 'UniversityController@byProvince');
Route::get('/colleges/byCity', 'UniversityController@byCity');


//Resource Controllers
Route:: resource('scholarships', 'ScholarshipsController');
Route:: resource('colleges','UniversityController');
Route:: resource('match','MatchController');

//Route:: resource('result','MatchController');

