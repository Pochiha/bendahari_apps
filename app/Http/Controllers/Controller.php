<?php

//Get Controller Path
namespace App\Http\Controllers;

//DispatchesJobs
use Illuminate\Foundation\Bus\DispatchesJobs;

//Routing Controller
use Illuminate\Routing\Controller as BaseController;

//Validate Request
use Illuminate\Foundation\Validation\ValidatesRequests;

//Authorize Request
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

//Get Request
use Illuminate\Http\Request;

//Model
//use App\Http\Models\Dashboard\Module\Home\SystemSetting;
// use App\Http\Models\Dashboard\Module\Home\MainSetting;
// use App\Http\Models\Dashboard\Module\Home\Module;

//Get Session
use Auth;

//Get Session
use Session;

//Get Carbon
use Carbon\Carbon;

//Get Helpers
use App\Http\Helpers\Token;

//Get Database
use DB;

//Get Class
class Controller extends BaseController{

  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

  /**************************************************************************************
    Construct
  **************************************************************************************/
  public function __construct(Request $request){

    //Check Navigation
    $this->navigation();

  }

  /**************************************************************************************
    Navigation
  **************************************************************************************/
  public function navigation(){

    //Set Navigation
    $this->navigation = [
      'header'=>[
        'home'=>config('routing.ukm.modules.landing.event.name').'.home',
        'history'=>[
          'general'=>config('routing.ukm.modules.landing.event.name').'.history.list',
          'view'=>config('routing.ukm.modules.landing.event.name').'.history.view',
        ],
        'browse'=>[
          'general'=>config('routing.ukm.modules.landing.event.name').'.browse.list',
          'view'=>config('routing.ukm.modules.landing.event.name').'.browse.view',
        ],
        'authorization'=>[
          'employee'=>config('routing.ukm.modules.dashboard.name').'.authorization.employee.login.ukm',
          'intern'=>config('routing.ukm.modules.dashboard.name').'.authorization.intern.login.ukm',
        ]
      ],
    ];

  }

  /**************************************************************************************
    Check Browser
  **************************************************************************************/
  public function checkBrowser(){

    $browser = [];

    $browser['application'] = ['Opera','Edg','Chrome','Safari','Firefox','MSIE','Trident'];

    $agent = $_SERVER['HTTP_USER_AGENT'];


    foreach ($browser['application'] as $web_browser) {
        if (strpos($agent, $web_browser) !== false) {
            $browser['user']['application'] = $web_browser;
            break;
        }
    }

    //Get Browser User Application
    switch ($browser['user']['application']){

      case 'MSIE':
          $browser['user']['application_name'] = 'Internet Explorer';
      break;

      case 'Trident':
        $browser['user']['application_name'] = 'Internet Explorer';
      break;

      case 'Edg':
        $browser['user']['application_name'] = 'Microsoft Edge';
      break;

    }

    //Return Browser
    return $browser;

    echo "You are using ".$browser['user']['application_name']." browser";

  }

}
