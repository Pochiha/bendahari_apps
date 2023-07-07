<?php

//Get Controller Path
namespace App\Http\Controllers\UKM\Modules\Dashboard\Employee\Profile;

//Get Database
use DB;

//Get Timestamp
use Carbon\Carbon;

//Get File
use File;

//Controller Helper
use App\Http\Controllers\Controller;

//Model
use App\Models\UKM\MYSQL\Table\Employee;
use App\Models\UKM\MYSQL\Table\EmployeeProfile;
use App\Models\UKM\MYSQL\Table\EmployeeJobDetail;
use App\Models\General\MYSQL\Table\RepositoryFolder;
use App\Models\UKM\MYSQL\Table\EmployeeSeatingDetail;
use App\Models\UKM\MYSQL\Table\EmployeePersonalDetail;

//Get Request
use Illuminate\Http\Request;

//Get Class
class IndexController extends Controller{

	//Path Header
	protected $header = [
		'category'=>'Profile',
		'module'=>'',
		'sub'=>'',
		'gate'=>''
	];

	//View Path
	protected $view;

	//Route Link
	protected $route_link;

	//Asset
	public $asset;

	//Hyperlink
	public $hyperlink;

	//Set Configuration
	public $configuration;

	/**************************************************************************************
		Route Path
	**************************************************************************************/
	public function routePath(){

		//Set Route View
		$this->route_link['view'] = config('routing.ukm.modules.dashboard.employee.view').'.';

		//Set Path
		$this->route_link['name'] = config('routing.ukm.modules.dashboard.employee.view').'.';

		//Set Image Route
		// $this->asset['images'] = '/images/ukm/modules/landing/event/home/';

		//Set Hyperlink
		// $this->hyperlink['navigation'] = $this->navigation;

		// $hyperlink['navigation']['header']['authorization']['employee'] = config('routing.ukm.modules.dashboard.employee.view.name').'.authorization.employee.login.ukm';
		// $hyperlink['navigation']['header']['home'] = config('routing.ukm.modules.landing.event.name').'.home';
	}

	/**************************************************************************************
 		Index
 	**************************************************************************************/
	public function index(Request $request){

		//Get Route Path
		$this->routePath();

		//Get Model
		$model['employee'] = new Employee();
		$model['employee']['profile'] = new EmployeeProfile();
		$model['employee']['job_detail'] = new EmployeeJobDetail();
		$model['employee']['seating_detail'] = new EmployeeSeatingDetail();
		$model['employee']['personal_detail'] = new EmployeePersonalDetail();

		//Get Data
		$data['employee'] = $model['employee']->userDetail();
		$data['profile'] = $model['employee']['profile']->userDetail();
		$data['job_detail'] = $model['employee']['job_detail']->userDetail();
		$data['seating_detail'] = $model['employee']['seating_detail']->userDetail();
		$data['personal_detail'] = $model['employee']['personal_detail']->userDetail();

		//Set Hyperlink
		$hyperlink = $this->hyperlink;

		//Return View
		return view($this->route_link['view'].'profile.index',compact('hyperlink','data'));

  }

}
