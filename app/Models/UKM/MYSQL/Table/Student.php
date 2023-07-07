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

// Get Audit
use OwenIt\Auditing\Contracts\Auditable;

//Get Class
class Student extends Authenticatable implements Auditable{

  //Use Audit
  use \OwenIt\Auditing\Auditable;

    //Use Notify
    use Notifiable;

    //Table Name
    protected $table = 'student';

    //Set Incrementing
    public $incrementing = false;

    //Set Timestamp
    public $timestamps = false;

    //Primary Key
    protected $primaryKey = 'student_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    //Column
    protected $fillable = [
    'student_id',
    'email',
    'password',
    'status',
    'student_status_id',
    'student_entry_status',
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

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
      'email_verified_at' => 'datetime',
  ];

  /**************************************************************************************
    Relationship
  **************************************************************************************/
  public function studentStatus(){
    return $this->hasOne('App\Models\General\MYSQL\Table\StudentStatus','student_status_id','student_status_id');
  }

  /**************************************************************************************
    Profile Name
  **************************************************************************************/
  public function profile(){
    return $this->hasOne('App\Models\UKM\MYSQL\Table\StudentProfile','student_id','student_id');
  }

  /**************************************************************************************
    ST - Student Total
  **************************************************************************************/
  public function getTotal($data = null){

    //Get Query
    $result = DB::connection($this->connection)->table($this->table)
                                               ->join('general.student_status','student_status.student_status_id',$this->table.'.student_status_id');

    //Filter Status
    if(isset($data['column']['status']) && $data['column']['status'] != null){$result = $result->where('general.student_status'.'.name',$data['column']['status']);}

    //Get Result
    $result = $result->count();

    //Return Result
    return $result;

  }

  /**************************************************************************************
    Relationship with Office
  **************************************************************************************/
  public function getEmailLink(){

    //Get Query
    $result = DB::connection('mysql_general')->table('office_email')
                                             ->select('office_email.email_link')
                                             ->where('office_email.office_id','=', session()->get('database'))
                                             ->first();

    return (($result)?$result->email_link:'-');

  }

    /**************************************************************************************
      Get Is Admin Access
    **************************************************************************************/
    public function isAdmin()
    {
        return $this->checkUserAccess(
            [
            'developer',
            'superadmin',
            'administrator'
          ]
        );
    }

    /**************************************************************************************
      Check User Access (For Middleware)
    **************************************************************************************/
    public function checkUserAccess($role)
    {
        $role = (array)$role;
        return in_array(Auth::guard('employee')->user()->ua_id, $role);
    }


    /**************************************************************************************
      Get User List Box
    **************************************************************************************/
    public function getListBox(){

        //Get Query
        $result = DB::table($this->table)
                ->select(
                    'employee.employee_id',
                    'employee_profile.first_name',
                    'employee_profile.last_name'
                )
                ->join('employee_profile','employee_profile.employee_id','=','employee.employee_id')
                ->where('employee.status','active')
                ->whereNotIn('employee.employee_id', ['ADMINISTRATOR','AUDIT','GUEST','ICTCENTRE','ICTHUB'])
                ->get();

        //Return Result
        return $result;
    }



    /**************************************************************************************
      Get List Student
    **************************************************************************************/
    public function getList($data)
    {

     //Get Query Selection
        $result = DB::table($this->table)
     ->select(
         'student.student_id',
         'student_profile.first_name',
         'student_profile.last_name',
         'student_status.status',
         'programme.name as prog'
     )
     ->join('student_profile','student_profile.student_id','=','student.student_id')
     ->join('student_status','student_status.student_status_id','=','student.student_status_id')
     ->join('programme','programme.programme_id','=','student_profile.programme_id');
        ;

        //Check Is Admin
        if (!Auth::User()->isAdmin()) {
            $result = $result->where('student_status.name','!=','deleted');
        }


        // dd($data);
        //Check Type
        if (isset($data['type'])) {

        //Get Type
            switch ($data['type']) {

          //List Type
          case 'search':
          case 'sort':
          case 'filter':

            //Search Query
            if ($data['column']['search']) {
                $result = $result->where('student.student_id','LIKE','%'.$data['column']['search'].'%');
                $result = $result->orWhere('student_profile.first_name','LIKE','%'.$data['column']['search'].'%');
                $result = $result->orWhere('student_profile.name','LIKE','%'.$data['column']['search'].'%');
                $result = $result->orWhere('student_profile.last_name','LIKE','%'.$data['column']['search'].'%');
            }

            //Filter Query
            // if (isset($data['column']['organization_id']) && $data['column']['organization_id'] != null) {
            //     $result = $result->where($data['column']['organization_id']);
            // }
            // if (isset($data['column']['up_id']) && $data['column']['up_id'] != null) {
            //     $result = $result->where($data['column']['up_id']);
            // }
            if(isset($data['column']['status']) && $data['column']['status'] != null){
              $result = $result->where($data['column']['status']);
            }

            //Sort Query
            if((isset($data['column']['order']['ordercolumn']) && $data['column']['order']['ordercolumn'] != null) && (isset($data['column']['order']['orderby']) && $data['column']['order']['orderby'] != null)) {
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
          Check User Exist
      **************************************************************************************/
    public function checkExist($data)
    {

        //Get Count
        $result = DB::table($this->table)
                        ->select(
                            [
                                'student.student_id'
                            ]
                        )
                        ->where('student.student_id', $data['id']);

        //Check Type
        if (isset($data['type']) != null && $data['type'] == 'check_status') {
            $result = $result->where('student.status','deleted');
        }

        //Get Count Result
        $result = $result->count();

        //Return Result
        return $result;
    }
}
