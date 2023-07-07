<?php

/*
|--------------------------------------------------------------------------
| Web Routes for Authorization
|--------------------------------------------------------------------------
| Page
|--------------------------------------------------------------------------
*/

  /**************************************************************************************
    Process
  **************************************************************************************/
  Route::prefix('/process')->group(function(){

    /*  Login
    **************************************************************************************/
    Route::post('/login',config('routing.share.modules.dashboard.controller').'\Authorization\Login\ProcessController@process')->name(config('routing.share.modules.dashboard.name').'.authorization.process.login');

  }); // End Process

  /**************************************************************************************
    Logout
  **************************************************************************************/
  Route::get('/dashboard/logout', config('routing.share.modules.dashboard.controller').'\Authorization\Logout\ProcessController@logout')->name(config('routing.share.modules.dashboard.name').'.authorization.logout');
