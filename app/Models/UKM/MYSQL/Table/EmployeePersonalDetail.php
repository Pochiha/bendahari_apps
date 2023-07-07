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
class EmployeePersonalDetail extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $table = 'employee_personal_detail';

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
    'address',
    'postcode',
    'state_id',
    'country_id',
    'citizenship_id',
    'place_of_birth_id',
    'dob',
    'race_id',
    'academic_qualification',
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
                                                  $this->table.'.dob AS dob',
                                                  $this->table.'.address AS address',
                                                  $this->table.'.postcode AS postcode',
                                                  $this->table.'.academic_qualification',
                                                  
                                                  'general.race.name_ms AS race_name',
                                                  'general.citizenship.name_ms AS citizenship_name',
                                                  'general.state.name_ms AS state_name',
                                                  'general.place_of_birth.name_ms AS pob'

                                                 )

                                                ->leftJoin('general.place_of_birth as place_of_birth',$this->table.'.place_of_birth_id','=','general.place_of_birth.place_of_birth_id') 
                                                ->leftJoin('general.race AS race','race.race_id','=',$this->table.'.race_id')
                                                ->leftJoin('general.state as state',$this->table.'.state_id','=','general.state.state_id')
                                                ->leftJoin('general.citizenship as citizenship',$this->table.'.citizenship_id','=','general.citizenship.citizenship_id')
                                              
                                                ->where($this->table.'.employee_id',Auth::id())
                                                ->first();
                                               

    //Return Result
    return $result;

  }







}
