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
class StudentProfile extends Authenticatable implements Auditable{

  // Use Audit
  use \OwenIt\Auditing\Auditable;

  //Use Notify
  use Notifiable;

  //Table Name
  protected $table = "student_profile";

  //Set Incrementing
  public $incrementing = false;

  //Set Timestamp
  public $timestamps = false;

  //Primary Key
  protected $primaryKey = "student_id";

  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */

  //Column
  protected $fillable = [
    'student_id',
    'name',
    'first_name',
    'last_name',
    'nickname',
    'display_name',
    'contact_no',
    'semester_id',
    'citizenship_id',
    'nric_type',
    'nric',
    'passport_issue',
    'passport_due',
    'religion_id',
    'gender_id',
    'marital_status_id',
    'disability_id',
    'nationality_id',
    'race_id',
    'programme_id',
    'birth_date',
    'birth_place',
    'remark',
    'avatar',
    'created_by',
    'created_at',
    'updated_by',
    'updated_at',
    'deleted_by',
    'deleted_at'
  ];

  /**************************************************************************************
    Relationship
  **************************************************************************************/
  public function profile(){
    return $this->belongsTo(\App\Models\UKM\StudentProfile::Class,'student_id','student_id');
  }

  /**************************************************************************************
    Select Box
  **************************************************************************************/
  public function selectBox($data = null){
// dd($data);
    //Get Query
    $result = DB::table($this->table)->select(
                                        $this->table.'.student_id AS student_id',
                                        $this->table.'.name AS name',
                                        $this->table.'.first_name AS first_name',
                                        $this->table.'.last_name AS last_name',
                                        $this->table.'.name AS student_name',
                                        'student.online_status AS online_status',
                                        'programme.programme_id AS programme_id',
                                        'programme.name AS programme_name',
                                        'student_status.name AS student_status_name',
                                        'intake.name AS student_intake_name',
                                        'scheme.name AS scheme_name',

                                      )
                                    ->leftJoin('student','student.student_id','student_profile.student_id')
                                    ->leftJoin('general.student_status','student_status.student_status_id','student.student_status_id')
                                    ->leftJoin('programme','programme.programme_id','student_profile.programme_id')
                                    ->leftJoin('semester','semester.semester_id','student_profile.semester_id')
                                    ->leftJoin('intake','intake.intake_id','semester.intake_id')
                                    ->leftJoin('scheme','scheme.scheme_id','=','programme.scheme_id');


      //Check Category
      if(isset($data['category'])){

        //Get Category
        switch($data['category']){

          //Candidate
          case 'student_by_semester':

              $result = $result->where($this->table.'.semester_id',$data['column']['semester_id']);

             $result = $result->orderBy($this->table.'.student_id','ASC');

          break;

          //Candidate
          case 'programme_intake':

              $result = $result->where('semester.intake_id',$data['column']['intake_id']);
              $result = $result->where($this->table.'.programme_id',$data['column']['programme_id']);
              $result = $result->whereIn('student.student_status_id',[106,107]);
              $result = $result->orderBy($this->table.'.student_id','ASC');

          break;

          default:
            // code...
          break;

       }
     }

     $result= $result->get()->toarray();

    //Return Result
    return $result;

  }

  /**************************************************************************************
    View Selected
  **************************************************************************************/
  public function viewSelected($data){

    //Get Query
    $result = DB::table($this->table)->select(

                                          //Student
                                          'student.student_id AS student_id',
                                          'student.email AS email',
                                          'student.student_status_id AS status',
                                          'student.student_entry_status AS student_entry_status',
                                          'student.online_status AS online_status',
                                          'student.activation_key AS activation_key',
                                          'student.remark AS student_remark',
                                          'student.created_at AS employee_created_at',
                                          'student.created_by AS employee_created_by',
                                          'student.updated_at AS employee_updated_at',
                                          'student.updated_by AS employee_updated_by',
                                          'student.deleted_at AS employee_deleted_at',
                                          'student.deleted_by AS employee_deleted_by',
                                          $this->table.'.first_name AS first_name',
                                          $this->table.'.last_name AS last_name',
                                          $this->table.'.name AS name',
                                          $this->table.'.nickname AS nickname',
                                          $this->table.'.display_name AS display_name',
                                          $this->table.'.nric_type AS nric_type',
                                          $this->table.'.nric AS nric',
                                          $this->table.'.contact_no AS contact_no',
                                          $this->table.'.passport_issue AS passport_issue',
                                          $this->table.'.passport_due AS passport_due',
                                          $this->table.'.religion_id AS religion_id',
                                          'religion.name AS religion_name',
                                          'student_profile.gender_id AS gender_id',
                                          'gender.name AS gender_name',
                                          $this->table.'.citizenship_id AS citizenship_id',
                                          $this->table.'.nationality_id AS nationality_id',
                                          $this->table.'.marital_status_id AS marital_status_id',
                                          'marital_status.name AS marital_status_name',
                                          $this->table.'.disability_status_id AS disability_status_id',
                                          'disability_status.name AS disability_status_name',
                                          $this->table.'.race_id AS race_id',
                                          'race.name AS race_name',
                                          $this->table.'.programme_id AS programme_id',
                                          $this->table.'.birth_date AS birth_date',
                                          $this->table.'.birth_place AS birth_place',
                                          $this->table.'.remark AS student_profile_remark',
                                          $this->table.'.avatar AS avatar',
                                          'student.student_status_id AS student_status_id',
                                          'student_status.name AS student_status_name',
                                          'intake.intake_id AS student_intake_id',
                                          $this->table.'.semester_id AS student_semester_id',
                                          'intake.name AS student_intake_name',
                                          $this->table.'.programme_id AS programme_id',
                                          'programme.name AS programme_name',
                                          'programme.education_level_id AS education_level_id',
                                          'education_level.name AS education_level_name',
                                          'programme.scheme_id AS scheme_id',
                                          'scheme.name AS scheme_name',
                                          'scheme.education_degree_id AS education_degree_id',
                                          'education_degree.name AS education_degree_name',
                                          $this->table.'.created_at AS student_profile_created_at',
                                          $this->table.'.created_by AS student_profile_created_by',
                                          $this->table.'.updated_at AS student_profile_updated_at',
                                          $this->table.'.updated_by AS student_profile_updated_by',
                                          $this->table.'.deleted_at AS student_profile_deleted_at',
                                          $this->table.'.deleted_by AS student_profile_deleted_by'
                                       )
                                     ->join('student','student.student_id','=',$this->table.'.student_id')
                                     ->join('student_status','student_status.student_status_id','=','student.student_status_id')
                                     ->leftJoin('general.gender AS gender','gender.gender_id','=',$this->table.'.gender_id')
                                     ->leftJoin('general.display_name_type AS display_name','display_name.display_name_type_id','=',$this->table.'.display_name')
                                     ->leftJoin('general.country AS country','country.country_id','=',$this->table.'.passport_issue')
                                     ->leftJoin('general.religion AS religion','religion.religion_id','=',$this->table.'.religion_id')
                                     ->leftJoin('general.marital_status AS marital_status','marital_status.marital_status_id','=',$this->table.'.marital_status_id')
                                     ->leftJoin('general.disability_status AS disability_status','disability_status.disability_status_id','=',$this->table.'.disability_status_id')
                                     ->leftJoin('general.race AS race','race.race_id','=',$this->table.'.race_id')
                                     ->leftJoin('semester','semester.semester_id','=',$this->table.'.semester_id')
                                     ->leftJoin('intake','intake.intake_id','=','semester.intake_id')
                                     ->leftJoin('programme','programme.programme_id','=',$this->table.'.programme_id')
                                     ->leftJoin('general.education_level AS education_level','education_level.education_level_id','=','programme.education_level_id')
                                     ->leftJoin('scheme','scheme.scheme_id','=','programme.scheme_id')
                                     ->leftJoin('general.education_degree AS education_degree','education_degree.education_degree_id','=','scheme.education_degree_id')
                                     ->where('student.student_id',$data['column']['student_id'])
                                     ->first();

      //Return Result
      return $result;
  }

    /**************************************************************************************
        Get Student Transcript Details
      **************************************************************************************/
    public function getStudentTranscript($data)
    {

      //Get Query
        $result = DB::table($this->table)
              ->select(
                  'student_profile.first_name',
                  'student_profile.last_name',
                        // 'student_profile.programme_id',
                        'student_profile.nric',
                  'student.student_id',
                  'student.email',
                  'programme.name as programme_name',
                  'semester.name as semester_name',
                  'student_status.student_status_id',
                  'student_status.name as student_status_name',
                  'academic_landscape.total_credit',

                        // DB::raw('SUM(academic_landscape.sequence) AS sum_of_1')
              )
              ->leftjoin('student','student.student_id','=','student_profile.student_id')
              ->leftjoin('semester','semester.semester_id','=','student_profile.intake_id')
              ->leftjoin('programme','programme.programme_id','=','student_profile.programme_id')
              // ->join('academic_landscape','academic_landscape.programme_id','=','student_profile.programme_id')
              ->leftjoin('student_status','student_status.student_status_id','=','student.student_status_id')
              ->leftjoin('academic_landscape', function ($join) {
                  $join->on('academic_landscape.programme_id','=','student_profile.programme_id');
                  $join->on('academic_landscape.semester_intake_id','=','student_profile.intake_id');
              })
              ->where('student.student_id', $data['student_id'])
              ->first();

        //Return Result
        return $result;
    }

    public function getListBox()
    {

        //Get Query
        $result = DB::table($this->table)
                ->select(
                    'student.student_id',
                    'student_profile.first_name',
                    'student_profile.last_name',
                    'student.online_status'
                )
                ->leftJoin('student','student.student_id','=','student_profile.student_id')
                // /->where('student.online_status','online')
                ->get();

        //Return Result
        return $result;
    }


}
