<?php

    /*************************************************************************************
      Manage Event
    **************************************************************************************/
    Route::prefix('/manage')->group(function(){

        /*  New
        **************************************************************************************/
        Route::get('/new',config('routing.ukm.modules.dashboard.controller').'\Employee\Manage\IndexController@new')->name(config('routing.ukm.modules.dashboard.employee.name').'.event.manage.happening.new');

        /*  List
        **************************************************************************************/
        Route::get('/list',config('routing.ukm.modules.dashboard.controller').'\Employee\Manage\IndexController@list')->name(config('routing.ukm.modules.dashboard.employee.name').'.event.manage.happening.list');

        /*  Delete
        **************************************************************************************/
        Route::get('/delete',config('routing.ukm.modules.dashboard.controller').'\Employee\Manage\IndexController@delete')->name(config('routing.ukm.modules.dashboard.employee.name').'.event.manage.happening.delete');

        /*  Update
        **************************************************************************************/
        Route::post('/update/id/{id?}',config('routing.ukm.modules.dashboard.controller').'\Employee\Manage\IndexController@update')->name(config('routing.ukm.modules.dashboard.employee.name').'.event.manage.happening.update');

        /*  Upload
        **************************************************************************************/
        Route::post('/upload',config('routing.ukm.modules.dashboard.controller').'\Employee\Manage\IndexController@uploadImage')->name(config('routing.ukm.modules.dashboard.employee.name').'.event.manage.happening.upload');
    
    }); //End Manage Event

?>