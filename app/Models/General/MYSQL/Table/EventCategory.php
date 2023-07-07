<?php

//Get Model Path
namespace App\Models\General\MYSQL\Table;

//Get Notifiable
use Illuminate\Notifications\Notifiable;

//Get User Authenticatable
use Illuminate\Foundation\Auth\User as Authenticatable;

//Get Authorization
use Auth;

//Get Database
use DB;

//Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get Class
class EventCategory extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $connection = 'mysql_general';

  //Table Name
  protected $table = 'event_category';

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'event_category_id';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'event_category_id',
    'name',
    'name_ms',
    'status',
    'remark',
    'remark_user',
    'created_by',
    'created_at',
    'updated_by',
    'updated_at',
    'deleted_by',
    'deleted_at'
  ];

  /**************************************************************************************
    Select Box
  **************************************************************************************/
  public function selectBox(){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                               ->where($this->table.'.status','active')
                                               ->get()
                                               ->toarray();
    //Return Result
    return $result;

  }

  /**************************************************************************************
    Get Event
  **************************************************************************************/
  public function getList(){

    //Get Query Selection
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                 $this->table.'.event_category_id AS event_category_id',
                                                 $this->table.'.name AS name',
                                                 $this->table.'.name_ms AS name_ms',
                                                 $this->table.'.status AS status',
                                                 $this->table.'.remark AS remark'
                                               )
                                               ->where($this->table.'.status','active')
                                               ->get();

    //Return Result
    return $result;

  }

}