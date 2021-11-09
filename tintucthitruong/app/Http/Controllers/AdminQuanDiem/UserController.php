<?php

namespace App\Http\Controllers\AdminQuanDiem;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Auth;

class UserController extends Controller
{
  private $user;
  public function __construct(){
    $this->user = new User;
  }

  public function login(){
    return view("admin-quan-diem.auth.login");
}

public function postLogin(Request $request){       

    if (Auth::attempt(['email' => $request->email, 'password' => $request->password,"lever"=>1])) {

        return redirect()->route("AdminQuanDiem.posts");
    } else {
        return back()->with("error","login failed");
    }
}

public function logout(){
    Auth::logout();
    return redirect()->route("AdminQuanDiem.login");
}

public function profile(){
    $data['user'] = Auth::user();

    return view("admin-quan-diem.user.profile",$data);

}

public function saveProfile(Request $request){
    $image = $request->file('image');
    $image_name = 'users-' . time() . '.' . $image->getClientOriginalExtension();
    $image->move(public_path('uploads/users'), $image_name);
    $image = 'uploads/users/' . $image_name;

    $user = $this->user->find(Auth::user()->id);
    $user->name = $request->name;
    $user->date_of_birth = $request->date_of_birth;
    $user->image = $image;
    $user->save();

    return back()->with(['success' => 'Cập nhật thành công.']);
}

}
