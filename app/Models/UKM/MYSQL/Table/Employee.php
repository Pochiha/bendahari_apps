<?php

//Get Model Path
namespace App\Models\UKM\MYSQL\Table;

//Get Notifiable
use Illuminate\Notifications\Notifiable;

//Get User Authenticatable
use Illuminate\Foundation\Auth\User as Authenticatable;

//Get Authorization
use Auth;

//Get Database
use DB;

//Get Model
use App\Models\UKM\MYSQL\Table\EmployeeModuleGroup;

// Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get Class
class Employee extends Authenticatable implements Auditable{

  //Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Guard
  protected $guard = 'employee';

  //Connection
  // protected $connection = 'mysql_iukl';

  //Table Name
  protected $table = 'employee';

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'employee_id';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'employee_id',
    'email',
    'password',
    'ems_username',
    'employee_status_id',
    'ua_id',
    'online_status',
    'activation_key',
    'remark',
    'created_by',
    'created_at',
    'updated_by',
    'updated_at',
    'deleted_by',
    'deleted_at'
  ];

  /**
   * The attributes that should be hidden for arrays.
   *
   * @var array
   */
  protected $hidden = [
    'password',
    'remember_token',
  ];

  /**************************************************************************************
    Profile
  **************************************************************************************/
  public function profile(){
    return $this->hasOne('App\Models\UKM\MYSQL\Table\EmployeeProfile','employee_id','employee_id');
  }

  /**************************************************************************************
    Relationship
  **************************************************************************************/
  public function employeeStatus(){
    return $this->hasOne('App\Models\General\MYSQL\Table\EmployeeStatus','employee_status_id','employee_status_id');
  }

  public function userDetail(){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                                ->select(
                                                  $this->table.'.email AS email',

                                                  'general.employee_status.name_ms AS employee_status'

                                                 )

                                                ->leftJoin('general.employee_status as employee_status',$this->table.'.employee_status_id','=','general.employee_status.employee_status_id') 
                                               
                                                ->where($this->table.'.employee_id',Auth::id())
                                                ->first();

    //Return Result
    return $result;

  }

}
