<?php

//Controller Path
namespace App\Http\Controllers\UKM\Modules\Dashboard\Employee\Authorization;

//Get Authorization
use App\Http\Helpers\TokenAuthorizationUser;

//Controller Helper
use App\Http\Controllers\Controller;

//Model
// use App\Http\Models\General\MYSQL\Table\Office;

//Authenticate
use Illuminate\Foundation\Auth\AuthenticatesUsers;

//Get Request
use Illuminate\Http\Request;

//Get Class
class LoginController extends Controller{

  //Path Header
	protected $header = [
		'category'=>'Employee',
		'module'=>'Login',
		'sub'=>'',
		'gate'=>''
	];

	//View Asset
	public $asset;

	//View Path
	protected $view;

  //View Path
  protected $route_link;

  //Path Link
  public $hyperlink;

  public $token;


  /**************************************************************************************
    Construct
  **************************************************************************************/
  public function __construct(){

    //Set Middleware
    $this->middleware('guest')->except('logout');
    $this->middleware('guest:employee')->except('logout');

    //Check Navigation
    $this->navigation();

  }

  /**************************************************************************************
    Route Path
  **************************************************************************************/
  public function routePath(){

    //Set View
    $this->route_link['view'] = config('routing.ukm.modules.dashboard.employee.view').'.';

    //Set Path
    $this->route_link['name'] = config('routing.ukm.modules.dashboard.employee.view').'.';

		//Set Image Route
		$this->asset['images'] = '/images/ukm/modules/dashboard/authorization/employee/login/';

    //Set Hyperlink
    $this->hyperlink['page']['login'] = $this->route_link['name'].'login';
    $this->hyperlink['page']['process'] = config('routing.share.modules.dashboard.name').'.authorization.process.login';

    //Set Navigation
		$this->hyperlink['navigation'] = $this->navigation;

  }

  /**************************************************************************************
    Login
  **************************************************************************************/
  public function login(){

    //Get Route Path
		$this->routePath();

		//Set Hyperlink
		$hyperlink = $this->hyperlink;

    //Set Token
    $token = new TokenAuthorizationUser();

		//Set Asset
		$asset = $this->asset;

    //Set Title
    $data['title'] = array($this->header['category'],$this->header['module']);

    //Get Authorization Token Guard
    $authorization_token['guard'] = $token->encrypt['guard']['employee'];

    //Get Authorization Token Database
    $authorization_token['database'] = $token->encrypt['database']['ukm'];

    //Return View
    return view($this->route_link['view'].'authorization.login.index',compact('data','asset','authorization_token','hyperlink'));

  }


}
