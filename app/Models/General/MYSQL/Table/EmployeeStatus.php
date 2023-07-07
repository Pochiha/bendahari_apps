<?php

//Get Model Path
namespace App\Models\General\MYSQL\Table;

//Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get Authorization
use Auth;

//Get Database
use DB;

//Get Eloquent
use Illuminate\Database\Eloquent\Model;

//Get Notifiable
use Illuminate\Notifications\Notifiable;

//Get Class
class EmployeeStatus extends Model implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Database Connection
  protected $connection = "mysql_general";

  //Table Name
  protected $table = "employee_status";

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = "employee_status_id";

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'employee_status_id',
    'name',
    'user_remark',
    'remark',
    'status',
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
  public function selectBox($data = null){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                  $this->table.'.employee_status_id AS employee_status_id',
                                                  $this->table.'.name AS student_status_name'
                                                );

    //Filter Query
    if(isset($data['column']['status']) && $data['column']['status'] != null){

      //Set Condition
      $condition = $data['column']['status'];

      //Result
      $result = $result->where(function($q) use ($condition){
          foreach($condition as $key => $value){
            foreach($value as $k => $v){
                $q->orwhere($k,'=',$v);
            }

          }
        }
      );

    }

    //Get Result
    $result = $result->get()
                     ->toarray();

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Get List
  **************************************************************************************/
  public function getList($data){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                  $this->table.'.employee_status_id AS employee_status_id',
                                                  $this->table.'.name AS name',
                                                  $this->table.'.remark AS remark',
                                                  $this->table.'.status AS status',
                                                  $this->table.'.created_by AS created_by',
                                                  $this->table.'.created_at AS created_at',
                                                  $this->table.'.updated_by AS updated_by',
                                                  $this->table.'.updated_at AS updated_at',
                                                  $this->table.'.deleted_by AS deleted_by',
                                                  $this->table.'.deleted_at AS deleted_at'
                                               );

    //Check if Admin
    if(!Auth::user()->isAdmin()){$result = $result->where($this->table.'.status','!=','deleted');}

    //Check Data Type
    if(isset($data['type'])){

      //Get Type
      switch($data['type']){

        //Get Type
        case 'filter':
        case 'search':
        case 'sort':

        // dd($data['column']['order']);

          //Search Query
          if(isset($data['column']['search'])){

            //Set Search
            $search = $data['column']['search'];

            //Get Filter Search
            $result = $result->where(function($query) use ($search){

              //Filter Search
              $query->where($this->table.'.employee_status_id','LIKE','%'.$search.'%');
              $query->orWhere($this->table.'.name','LIKE','%'.$search.'%');

            });

          }

          //Filter Query
          if(isset($data['column']['name']) && $data['column']['name'] != null){$result = $result->where($data['column']['name']);}

          //Sort Query
          if((isset($data['column']['order']['ordercolumn']) && $data['column']['order']['ordercolumn'] != null) && (isset($data['column']['order']['orderby']) && $data['column']['order']['orderby'] != null)){
            $result = $result->orderBy($data['column']['order']['ordercolumn'],$data['column']['order']['orderby']);
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
    Check Exist
  **************************************************************************************/
  public function checkExist($data){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select($this->table.'.student_status_id')
                                               ->where($this->table.'.student_status_id',$data['column']['id']);

    //Check Type For Soft and Hard Delete
    if(isset($data['type']) != null && $data['type'] == 'check_status'){$result = $result->where($this->table.'.status','deleted');}

    //Get Count Result
    $result = $result->count();

    //Return Result
    return $result;

  }

}
