<?php
//Get Model Path
namespace App\Models\UKM\MYSQL\Table;

//Get Eloquent
use Illuminate\Database\Eloquent\Model;

//Get trait
use App\Http\Controllers\Traits\UKM\Modules\Dashboard\Employee\Timestamps\CreatedUpdatedBy;

//Get Auth
use Auth;

//Get Database
use DB;

//Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get CLass
class EmployeeModuleGroup extends Model implements Auditable{

  //Use CreatedUpdatedBy
  use CreatedUpdatedBy;

  //Use Audit
  use \OwenIt\Auditing\Auditable;

  //Table Name
  protected $table = 'employee_module_group';

  //Set Incrementing
  public $incrementing = true;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'module_group_id';

  //Column
  protected $fillable = [
    'module_group_id',
    'name',
    'status',
    'remark',
    'created_by',
    'created_at',
    'updated_by',
    'updated_at',
    'deleted_by',
    'deleted_at'
  ];

  // /**************************************************************************************
  //   Relationship
  // **************************************************************************************/
  // public function userAccessModulePage(){
  //   return $this->hasMany('App\Http\Models\IUKL\MYSQL\Table\EmployeeUserAccessModulePage','user_access_module_id');
  // }


  /**************************************************************************************
    Get List Department Access Module
  **************************************************************************************/
  public function getList($data){
    //Get Query
    $result = DB::table($this->table)->select(
                                        $this->table.'.module_group_id AS module_group_id',
                                        $this->table.'.name AS name',
                                        $this->table.'.status AS status'
                                       );

    //Check Is Admin
    if(!Auth::User()->isAdmin()){
      $result = $result->where($this->table.'.status','!=','deleted');
    }

    //Check Type
    if(isset($data['type'])){

      //Get Type
      switch($data['type']){

        //List Type
        case 'filter':
        case 'search':
        case 'sort':

          //Search Query
          if(isset($data['column']['search'])){
            $result = $result->where($this->table.'.name','LIKE','%'.$data['column']['search'].'%');
          }

          //Filter Query
          if(isset($data['column']['status']) && $data['column']['status'] != null){
            $result = $result->where($data['column']['status']);
          }

          //Sort Query
          if((isset($data['column']['order']['ordercolumn']) && $data['column']['order']['ordercolumn'] != null) && (isset($data['column']['order']['orderby']) && $data['column']['order']['orderby'] != null)){
            $result = $result->orderBy($data['column']['order']['ordercolumn'], $data['column']['order']['orderby']);
          }

        break;

        //If Failed
        default:

          //Return Failed
          abort(404);

        break;

      }

    }

    //Get Paginate
    $result = $result->paginate($data['pagination']);

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Check Module Exist
  **************************************************************************************/
  public function checkExist($data){

    //Get Count
    $result = DB::table($this->table)->select($this->table.'.module_group_id AS module_group_id')
                                     ->where($this->table.'.name',$data['name']);

    //Check Type
    if(isset($data['type']) && $data['type'] == 'check_status'){$result = $result->where($this->table.'.status','deleted');}

    //Get Count Result
    $result = $result->count();

    //Return Result
    return $result;

  }

}
