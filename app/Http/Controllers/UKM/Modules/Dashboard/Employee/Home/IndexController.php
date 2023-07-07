<?php

//Get Controller Path
namespace App\Http\Controllers\UKM\Modules\Dashboard\Employee\Home;

//Get Database
use DB;

//Get Timestamp
use Carbon\Carbon;

//Get File
use File;

//Controller Helper
use App\Http\Controllers\Controller;

//Model
use App\Models\UKM\MYSQL\Table\EventHappening;
use App\Models\General\MYSQL\Table\RepositoryFolder;

//Get Request
use Illuminate\Http\Request;

//Get Class
class IndexController extends Controller{

	//Path Header
	protected $header = [
		'category'=>'Home',
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

	//URL Scheme
	// public $url_scheme = 'https';

	// //Repository
	// public $repository = [
	// 	'internal'=>[
	// 	  'type'=>'internal',
	// 	  'repository_folder_id'=>'event',
	// 	  ],
	// 	'external'=>[
	// 	  'type'=>'external',
	// 	  'repository_folder_id'=>'event',
	// 	]
	// ];

	// //Set Folder
	// public $folder = 'event_happening';

	/**************************************************************************************
    Repository Setting
  	**************************************************************************************/
	//   public function repositorySetting($data = null){

	// 	//Set Configuration
	// 	$this->configuration = $this->repository['external'];
	
	// 	//If Data Exist
	// 	if($data){
	
	// 	  //Set Configuration
	// 	  $this->configuration = $this->repository[$data['type']];
	
	// 	}
	
	// 	//Return Configuration
	// 	return $this->configuration;
	
	//   }

	/**************************************************************************************
		Route Path
	**************************************************************************************/
	public function routePath(){

		//Set Route View
		$this->route_link['view'] = config('routing.ukm.modules.dashboard.employee.view').'.';

		//Set Path
		$this->route_link['name'] = config('routing.ukm.modules.dashboard.employee.view').'.';

		//Set Image Route
		$this->asset['images'] = '/images/ukm/modules/landing/event/home/';

		//Set Hyperlink
		$this->hyperlink['page']['browse']['view'] = $this->route_link['name'].'browse.view';
		$this->hyperlink['navigation'] = $this->navigation;

		$hyperlink['navigation']['header']['authorization']['employee'] = config('routing.ukm.modules.dashboard.employee.view.name').'.authorization.employee.login.ukm';
		$hyperlink['navigation']['header']['home'] = config('routing.ukm.modules.landing.event.name').'.home';
		$hyperlink['navigation']['header']['browse']['general'] = config('routing.ukm.modules.landing.event.name').'.browse.list';
	}

	/**************************************************************************************
 		Index
 	**************************************************************************************/
	public function index(Request $request){

		//Get Route Path
		$this->routePath();

		//Set Hyperlink
		$hyperlink = $this->hyperlink;

		//Set Breadcrumb
		// $data['title'] = array($this->header['category']);

		//Get Model
		// $model['event']['happening'] = new EventHappening();
		// $model['repository_folder'] = new RepositoryFolder();

		/**************************************************************************************
			Banner
		**************************************************************************************/

		//Get repository Setting
		// $repository['setting'] = $this->repositorySetting(['type' => 'external']);

		// //Get Repository
		// $data['repository_folder'] = $model['repository_folder']->getRepository(
		// 	[
		// 		'column'=>[
		// 			'id'=>$repository['setting']['repository_folder_id'],
		// 			'type'=>$repository['setting']['type'],
		// 			'url_scheme'=>$this->url_scheme,
		// 			'office_id'=>'ukm',
		// 		]
		// 	]
		// );

		//Set Hyperlink
		// $hyperlink['page']['repository'] = $this->url_scheme.'://'.$data['repository_folder']->domain.'/'.$data['repository_folder']->path.'/' . $this->folder;

		//Set Breadcrumb
		// $data['title'] = array($this->header['category']);

		//Get Banner
		// $data['event']['happening'] = $model['event']['happening']->getImage();

		//Return View
		return view($this->route_link['view'].'home.index',compact('hyperlink'));

  }

}
