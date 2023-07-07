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
class EmployeeJobDetail extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $table = 'employee_job_detail';

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
    'employee_position_id',
    'employee_position_category_id',
    'employee_grading_code_id',
    'employee_position_grading_id',
    'employee_position_status_id',
    'field_of_work',
    'remark_user',
    'remark',
    'status',
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
                                                  $this->table.'.field_of_work', 
                                                  $this->table.'.employee_grading_code_id AS grading_code_id', 
                                                  $this->table.'.employee_position_grading_id AS grading_id', 

                                                  'general.employee_position.name_ms AS position_name',
                                                  'general.employee_position_category.name AS category_name',
                                                  'general.employee_position_status.name_ms AS position_status',

                                                 )

                                                ->leftJoin('general.employee_position as employee_position',$this->table.'.employee_position_id','=','general.employee_position.employee_position_id') 
                                                ->leftJoin('general.employee_position_category as employee_position_category',$this->table.'.employee_position_category_id','=','general.employee_position_category.employee_position_category_id') 
                                                ->leftJoin('general.employee_position_status as employee_position_status',$this->table.'.employee_position_status_id','=','general.employee_position_status.employee_position_status_id') 
                                               
                                              
                                                ->where($this->table.'.employee_id',Auth::id())
                                                ->first();
                                               

    //Return Result
    return $result;

  }

}
