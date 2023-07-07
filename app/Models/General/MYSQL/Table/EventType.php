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
class EventType extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $connection = 'mysql_general';

  //Table Name
  protected $table = 'event_type';

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'event_type_id';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'event_type_id',
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
  public function getList($data){
// dd(0)
    //Get Query Selection
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                 $this->table.'.event_type_id AS event_type_id',
                                                 $this->table.'.name AS name',
                                                 $this->table.'.name_ms AS name_ms',
                                                 $this->table.'.status AS status',
                                                 $this->table.'.remark AS remark'
                                               );

    //Check Is Admin
    if(!Auth::user()->isAdmin()){$result = $result->where($this->table.'.status','!=','deleted');}

    //Check Type
    if(isset($data['type'])){

      //Get Type
      switch($data['type']){

        //Get Type
        case 'filter':
        case 'search':
        case 'sort':

        // dd($data['column']['order']);

          //Search Query
          if(isset($data['column']['search'])){ //dd($data['column']['search']);
             $result = $result->where($this->table.'.name','LIKE','%'.$data['column']['search'].'%');
             $result = $result->orWhere($this->table.'.name_ms','LIKE','%'.$data['column']['search'].'%');
          }

          //Filter Query
          if(isset($data['column']['status']) && $data['column']['status'] != null){$result = $result->where($data['column']['status']);}

          //Sort Query
          if((isset($data['column']['order']['status']) && $data['column']['order']['status'] != null) && (isset($data['column']['order']['name']) && $data['column']['order']['name'] != null)){
            $result = $result->orderBy($data['column']['order']['status'],$data['column']['order']['name']);
          }

        break;

        //If Failed
        default:

          //Return Failed
          abort(404);

        break;

      }

    }else{
        $result = $result->orderby($this->table.'.created_at','desc');
    }

    //Get Paginate
    $result = $result->paginate($data['pagination']);

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Check Scheme Exist
  **************************************************************************************/
  public function checkExist($data){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                  $this->table.'.event_type_id',
                                                  $this->table.'.name'
                                                )
                                                ->where($this->table.'.event_type_id','=',$data['column']['id']);


    //Check Type
    if(isset($data['type']) != null && $data['type'] == 'check_status'){$result = $result->where($this->table.'.status','deleted');}

    //Get Count Result
    $result = $result->count();

    //Return Result
    return $result;

  }


}
