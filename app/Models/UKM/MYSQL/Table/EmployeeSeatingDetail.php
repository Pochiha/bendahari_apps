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
class EmployeeSeatingDetail extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $table = 'employee_seating_detail';

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
    'building_id',
    'building_level_id',
    'building_room_id',
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

                                                  'building_room.name AS room_name',
                                                  'building_level.name_ms AS level_name',
                                                  'building.name_ms AS building_name'

                                                 )

                                                ->leftJoin('building_room as building_room',$this->table.'.building_room_id','=','building_room.building_room_id') 
                                                ->leftJoin('building_level as building_level',$this->table.'.building_level_id','=','building_level.building_level_id') 
                                                ->leftJoin('building as building',$this->table.'.building_id','=','building.building_id') 
                                                                                              
                                                ->where($this->table.'.employee_id',Auth::id())
                                                ->first();
                                               

    //Return Result
    return $result;

  }

}
