<?php

/*
|--------------------------------------------------------------------------
| Web Routes for Authorization
|--------------------------------------------------------------------------
| Page
|--------------------------------------------------------------------------
*/

/**************************************************************************************
  Redirect
**************************************************************************************/
Route::get('/login',function(){return redirect()->route(config('routing.ukm.modules.dashboard.name').'.authorization.employee.login.ukm');});

/**************************************************************************************
  Employee
**************************************************************************************/
Route::prefix('/employee')->group(function(){

  /**************************************************************************************
    Login
  **************************************************************************************/
  Route::prefix('/login')->group(function(){

    /*  Login
    **************************************************************************************/
    Route::get('/',config('routing.ukm.modules.dashboard.controller').'\Employee\Authorization\LoginController@login')->name(config('routing.ukm.modules.dashboard.name').'.authorization.employee.login.ukm');

  }); // Login

}); //End Employee
