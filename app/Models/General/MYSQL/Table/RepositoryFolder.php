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
class RepositoryFolder extends Model implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table connection
  protected $connection = 'mysql_general';

  //Table Name
  protected $table = 'repository_folder';

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'repository_folder_id';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'repository_folder_id',
    'office_id',
    'type',
    'url_scheme',
    'name',
    'domain',
    'path',
    'status',
    'remark',
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

    //Get Query Selection
    $result = DB::connection($this->connection)->table($this->table);

    //Check Is Admin
    if(!Auth::user()->isAdmin()){$result = $result->where($this->table.'.status','!=','deleted');}

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
                                                  $this->table.'.repository_folder_id',
                                                  $this->table.'.name',
                                                  $this->table.'.status',
                                                  $this->table.'.remark'
                                                );

    //if Admin
    if(!Auth::user()->isAdmin()){$result = $result->where($this->table.'.status','!=','deleted');}

    //Check Data Type
    if(isset($data['type'])){

      //Get Type
      switch($data['type']){

        //Get Type
        case 'filter':
        case 'search':
        case 'sort':

          //Search Query
          if(isset($data['column']['search'])){

            //Set Search
            $search = $data['column']['search'];

            //Get Filter Search
            $result = $result->where(function($query) use ($search){

              //Filter Search
              $query->where($this->table.'.name','LIKE','%'.$search.'%');

            });

          }

          //Filter Query
          if(isset($data['column']['name']) && $data['column']['name'] != null){$result = $result->where($data['column']['name']);}
          if(isset($data['column']['status']) && $data['column']['status'] != null){$result = $result->where($data['column']['status']);}

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
    Check Exist Server
  **************************************************************************************/
  public function getRepository($data){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                  $this->table.'.repository_folder_id AS repository_folder_id',
                                                  $this->table.'.office_id AS office_id',
                                                  $this->table.'.type AS type',
                                                  $this->table.'.url_scheme AS url_scheme',
                                                  $this->table.'.name AS name',
                                                  $this->table.'.domain AS domain',
                                                  $this->table.'.path AS path',
                                                 )
                                               ->where($this->table.'.repository_folder_id',$data['column']['id'])
                                               ->where($this->table.'.type',$data['column']['type'])
                                               ->where($this->table.'.url_scheme',$data['column']['url_scheme'])
                                               ->where($this->table.'.office_id',$data['column']['office_id'])
                                               ->where($this->table.'.status','active');

    //Get Result
    $result = $result->first();

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Check Exist
  **************************************************************************************/
  public function checkExist($data){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select($this->table.'.repository_folder_id')
                                               ->where($this->table.'.repository_folder_id',$data['column']['id']);

    //Check Type For Soft and Hard Delete
    if(isset($data['type']) != null && $data['type'] == 'check_status'){$result = $result->where($this->table.'.status','deleted');}

    //Get Count Result
    $result = $result->count();

    //Return Result
    return $result;

  }

}
