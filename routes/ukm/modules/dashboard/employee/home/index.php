<?php

  /**************************************************************************************
    Home - Employee
  **************************************************************************************/
  
  /*  Home
  **************************************************************************************/
  Route::get('/home',config('routing.ukm.modules.dashboard.controller').'\Employee\Home\IndexController@index')->name(config('routing.ukm.modules.dashboard.employee.name').'.home');

  // /*************************************************************************************
  //   Browse Event
  // **************************************************************************************/
  // Route::prefix('/browse')->group(function(){

  //     /*  Browse Event
  //     **************************************************************************************/
  //     Route::get('/',config('routing.ukm.modules.dashboard.controller').'\Employee\Browse\IndexController@list')->name(config('routing.ukm.modules.dashboard.employee.name').'.employee.browse.list');

  //     /*  View
  //     **************************************************************************************/
  //     Route::get('/view/{id?}',config('routing.ukm.modules.dashboard.controller').'\Employee\Browse\IndexController@view')->name(config('routing.ukm.modules.dashboard.employee.name').'.employee.browse.view');

  // }); //End Browse Event

//  /*************************************************************************************
//       History Event
//   **************************************************************************************/
//   Route::prefix('/history')->group(function(){

//     /*  History Event
//     **************************************************************************************/
//     Route::get('/',config('routing.ukm.modules.dashboard.controller').'\Employee\History\IndexController@list')->name(config('routing.ukm.modules.dashboard.employee.name').'.employee.history.list');

//     /*  View
//     **************************************************************************************/
//     Route::get('/view/{id?}',config('routing.ukm.modules.dashboard.controller').'\Employee\History\IndexController@view')->name(config('routing.ukm.modules.dashboard.employee.name').'.employee.history.view');

//   }); //End History Event

?>