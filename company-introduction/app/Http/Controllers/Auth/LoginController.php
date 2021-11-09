<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\User;
use App\MenuItem;
use App\Position;
use App\model\Config;
use Hash;
use Auth;
use Session;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
    //overwrite  AuthenticatesUsers
    public function showLoginForm()
    {
        return view('admin.auth.login');
    }

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {        
        $this->middleware('guest')->except('logout');
    }

    // public function login(Request $request)
    // {
    //     $input = $request->all();

    //     $user = User::where('email',$input['email'])->first();

    //     if ($user && Hash::check($input['password'],$user->password)){

    //         if(isset($input['remember'])) Auth::login($user,true);
    //         else Auth::login($user);

    //         $menu_item_list = MenuItem::all();

    //         Session::put('menu_item_list',$menu_item_list);

    //         //SET PERMISSION TO DATABASE IF PERMISSION EMPTY
    //         $arr_permission = [];
    //         $permissions = ['read','insert','update','delete'];
    //         $menu_parents = collect($menu_item_list);
    //         $menu_parents = $menu_parents->where('parent_id',0);

    //         foreach($menu_parents as $parent)

    //             $menu_children = collect($menu_item_list);
    //             $menu_children = $menu_children->where('parent_id',$parent->id);
    //             $count = $menu_children->count();


    //         if($count == 0 ){
    //             foreach($permissions as $permission){
    //                 $arr_permission[$parent->title][$permission] = 0;
    //             }
    //         }else{
                
    //             foreach ($menu_children as $key => $menu_child) {
    //                 foreach($permissions as $permission){
    //                     $arr_permission[$menu_child->title][$permission] = 0;
    //                 }
    //             }
    //         }
    //         $json_permission = json_encode($arr_permission);

    //         $position_permission_list =  Position::where('id',Auth::user()->user_position_id)->first()->position_permission_list;
    //         if($position_permission_list == ""){
    //             Position::where('id',Auth::user()->user_position_id)->update(['position_permission_list'=>$json_permission]);
    //         }
    //         //END SET PERMISSION OT DATABASE
    //         //SET PERMISSION SESSION
    //         $permission_list_session = Position::where('id',Auth::user()->user_position_id)->first()->position_permission_list;
    //         $permission_list_session = json_decode($permission_list_session,true);
    //         Session::put('permission_list_session',$permission_list_session);

    //         //END SET PERMISSION SESSION
    //         // $this->add_session_config();
    //         return redirect()->route('home');

    //     }else
    //     {
    //         $request->session()->flash('message',"Information not match!");
    //         return back();
    //     }
        

    // }

    // private function add_session_config(){
    //     $config = Config::select('name','value')->get(); 
        
    //     $arr = [];
    //     foreach ($config as $value) {
    //          $arr[$value->name] = $value->value;
    //     }
    //     Session::put('config_session',$arr);  
    // }
    
}
