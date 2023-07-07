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

//Get Cache
use Illuminate\Support\Facades\Cache;

//Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get Class
class EmployeeProfile extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $table = 'employee_profile';

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
    'name',
    'first_name',
    'last_name',
    'nickname',
    'salutation_id',
    'display_name_type_id',
    'nric_type',
    'nric',
    'passport_issue',
    'passport_due',
    'religion_id',
    'gender_id',
    'marital_status_id',
    'disability_status_id',
    'office_no',
    'remark',
    'avatar',
    'created_by',
    'created_at',
    'updated_by',
    'updated_at',
    'deleted_by',
    'deleted_at'
  ];

  public function userDetail(){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                                ->select(
                                                  $this->table.'.employee_id AS employee_id',
                                                  $this->table.'.first_name AS first_name',
                                                  $this->table.'.last_name AS last_name',
                                                  $this->table.'.nric AS nric',
                                                  $this->table.'.contact_no AS contact_no',
                                                  $this->table.'.office_no AS office_no',
                                                  
                                                  'general.salutation.name AS salutation',
                                                  'general.gender.name_ms AS gender_name',
                                                  'general.religion.name_ms AS religion_name',
                                                  'general.disability_status.name_ms AS disability_status',
                                                  'general.marital_status.name_ms AS marital_status',
                                                  'general.department.name_ms AS department_name',
                                                  'general.department_division.name_ms AS department_division',
                                                  'general.department_unit.name_ms AS department_unit'

                                                 )

                                                ->leftJoin('employee','employee.employee_id','=',$this->table.'.employee_id')
                                                
                                                ->leftJoin('employee_job_detail','employee_job_detail.employee_id','=',$this->table.'.employee_id')

                                                ->leftJoin('employee_personal_detail',$this->table.'.employee_id','=','employee_personal_detail.employee_id')

                                                ->leftJoin('general.gender as gender',$this->table.'.gender_id','=','general.gender.gender_id') 
                                                ->leftJoin('general.salutation AS salutation','salutation.salutation_id','=',$this->table.'.salutation_id')
                                                ->leftJoin('general.religion as religion',$this->table.'.religion_id','=','general.religion.religion_id')
                                                ->leftJoin('general.disability_status as disability_status',$this->table.'.disability_status_id','=','general.disability_status.disability_status_id')
                                                ->leftJoin('general.marital_status as marital_status',$this->table.'.marital_status_id','=','general.marital_status.marital_status_id')
                                                ->leftJoin('general.department as department',$this->table.'.department_id','=','general.department.department_id')
                                                ->leftJoin('general.department_division as department_division',$this->table.'.department_division_id','=','general.department_division.department_division_id')
                                                ->leftJoin('general.department_unit as department_unit',$this->table.'.department_unit_id','=','general.department_unit.department_unit_id')
                                                
                                                ->where($this->table.'.employee_id',Auth::id())
                                                ->first();
                                               

    //Return Result
    return $result;

  }







}
