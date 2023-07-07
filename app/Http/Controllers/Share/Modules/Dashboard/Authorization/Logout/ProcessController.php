<?php

//Get Path
namespace App\Http\Controllers\Share\Modules\Dashboard\Authorization\Logout;

//Get Authorization
use Auth;

//Get Authorization
use App\Http\Helpers\TokenAuthorizationUser;

//Get Timestamp
use Carbon\Carbon;

//Controller Helper
use App\Http\Controllers\Controller;

//Model
use App\Models\UKM\MYSQL\Table\Employee as Employee;
use App\Models\UKM\MYSQL\Table\Intern as Intern;

//Get Request
use Illuminate\Http\Request;

//Get Class
class ProcessController extends Controller{

  /**************************************************************************************
    Route Path
  **************************************************************************************/
  public function routePath(){

    //Set Hyperlink

    //login
    $this->hyperlink['page']['login']['employee'] = config('routing.ukm.modules.dashboard.name').'.authorization.employee.login.ukm';
    $this->hyperlink['page']['login']['intern'] = config('routing.ukm.modules.dashboard.name').'.authorization.intern.login.ukm';

    //home
    $this->hyperlink['page']['home']['employee'] = config('routing.ukm.modules.dashboard.employee.name').'.employee.home';
    $this->hyperlink['page']['home']['intern'] = config('routing.ukm.modules.dashboard.intern.name').'.intern.home';

  }

  /**
   * Get the guard to be used during authentication.
   *
   * @return \Illuminate\Contracts\Auth\StatefulGuard
   */
  protected function guard($guard){return Auth::guard($guard);}

  /**************************************************************************************
    Logout
  **************************************************************************************/
  public function logout(Request $request){

    //Get Route Path
		$this->routePath();

		//Set Hyperlink
		$hyperlink = $this->hyperlink;

    //Set Token
    $token = new TokenAuthorizationUser();

    //Get Guard
    $guard = $token->encrypter->decrypt(session()->get('authorization_token'));

    //Check Guard
    switch($guard){

      //Employee
      case 'employee':

        //Get Model
        $model['user'] = new Employee();

        //Get User ID
        $data['main'] = $model['user']::find(Auth::guard($guard)->id());
// dd(Auth::guard($guard));
        //Set Query
        $data['main']->online_status = 'offline';

        //Execute Query
        $data['main']->save();

        //Unset Guard
        Auth::guard($guard)->logout();

        //Unset Session
        $request->session()
                ->invalidate();

        //Redirect to Login
        return redirect()->route($this->hyperlink['page']['login'][$guard]);

      break;

      //Intern
      case 'intern':

        //Get Model
        $model['intern'] = new Intern();

        //Get ID
        $intern['id'] = $token->encrypter->decrypt(session()->get('authorization_code'));

        //Get User ID
        $data['main'] = $model['intern']::find(Auth::guard($guard)->id());

        //Set Query
        $data['main']->online_status = 'offline';

        //Execute Query
        $data['main']->save();

        //Unset Guard
        Auth::guard($guard)
            ->logout();

        //Unset Session
        $request->session()->invalidate();

        //Redirect to Login
        return redirect()->route($this->hyperlink['page']['login'][$guard]);

      break;

      //If Failed
      default:

        //Return Failed
        abort(404);

      break;

    }

    //Return Failed
    abort(404);

  }

}
