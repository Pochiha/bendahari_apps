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
class Office extends Model implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $connection = 'mysql_general';

  //Table Name
  protected $table = 'office';

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = 'office_id';

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'office_id',
    'name',
    'abbreviation',
    'latitude',
    'longitude',
    'category',
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

  /**************************************************************************************
    Select Box
  **************************************************************************************/
  public function selectBox(){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table);

    //Get Result
    $result = $result->where($this->table.'.status','active')
                     ->get()
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
                                                  $this->table.'.office_id',
                                                  $this->table.'.name',
                                                  $this->table.'.abbreviation',
                                                  $this->table.'.latitude',
                                                  $this->table.'.longitude',
                                                  $this->table.'.status',
                                                  'office_category.name AS office_category_name'
                                               )
                                               ->leftJoin('office_category','office_category.office_category_id','=',$this->table.'.office_category_id');

    //Check Is Admin
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
              $query->where($this->table.'.name','LIKE','%'.$search.'%')
                    ->orWhere($this->table.'.office_id','LIKE','%'.$search.'%');

            });

          }

          //Filter Query
          if(isset($data['column']['name']) && $data['column']['name'] != null){$result = $result->where($data['column']['name']);}
          if(isset($data['column']['abbreviation']) && $data['column']['abbreviation'] != null){$result = $result->where($data['column']['abbreviation']);}
          if(isset($data['column']['status']) && $data['column']['status'] != null){$result = $result->where($data['column']['status']);}
          if(isset($data['column']['category']) && $data['column']['category'] != null){$result = $result->where($data['column']['category']);}

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
    // dd($result);

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Get View
  **************************************************************************************/
  public function viewSelected($data){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                 $this->table.'.office_id',
                                                 $this->table.'.name',
                                                 $this->table.'.abbreviation',
                                                 $this->table.'.latitude',
                                                 $this->table.'.longitude',
                                                 $this->table.'.status',
                                                 'office_category.name AS office_category_name'
                                                 )
                                               ->leftJoin('office_category','office_category.office_category_id','=',$this->table.'.office_category_id')
                                               ->where($this->table.'.office_id',$data['column']['office_id']);

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
                                               ->select($this->table.'.office_id')
                                               ->where($this->table.'.office_id',$data['column']['id']);

    //Check Type For Soft and Hard Delete
    if(isset($data['type']) != null && $data['type'] == 'check_status'){$result = $result->where($this->table.'.status','deleted');}

    //Get Count Result
    $result = $result->count();

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Get Office Location
  **************************************************************************************/
  public function getOfficeLocation(){

    //Get Count
    $result = DB::connection($this->connection)->table($this->table)
                                               ->select(
                                                    $this->table.'.office_id',
                                                    $this->table.'.office_category_id',
                                                    $this->table.'.name',
                                                    $this->table.'.abbreviation',
                                                    $this->table.'.latitude',
                                                    $this->table.'.longitude'
                                                  )
                                                ->whereNotNull($this->table.'.latitude')
                                                ->whereNotNull($this->table.'.longitude')
                                                ->where($this->table.'.status','active');

    //Get Count Result
    $result = $result->get();

    //Return Result
    return $result;

  }

}
