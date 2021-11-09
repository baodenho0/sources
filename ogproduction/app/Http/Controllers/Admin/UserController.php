<?php

namespace App\Http\Controllers\Admin;

use App\Role;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function index(){
        if(!Auth::user()->hasPermission('read-users')) abort(404);
        $users = User::orderBy('id','asc')->paginate(15);
        return view('pages.users.index')->withUsers($users);


    }

    public function create(){
        if(!Auth::user()->hasPermission('create-users')) abort(404);
        $roles = Role::all();
        return view('pages.users.create')->withRoles($roles);
    }

    public function store(Request $request){
        if(!Auth::user()->hasPermission('create-users')) abort(404);
        $this->middleware('permission:create-users');
        $messages = [
            'name.required' => 'Vui lòng nhập tên người dùng.',
            'name.max' => 'Tên người dùng không được quá 255 ký tự.',
            'email.required' => 'Vui lòng nhập địa chỉ email.',
            'email.email' => 'Địa chỉ email không đúng.',
            'email.unique' => 'Địa chỉ email đã được sử dụng.',
            'role.required' => 'Vui lòng chọn vai trò cho người dùng',
            'password.required' => 'Vui lòng nhập mật khẩu.',
            'password.min' => 'Mật khẩu phải lớn hơn hoặc bằng 6 ký tự.',
            'password.confirmed' => 'Nhập lại mật khẩu không đúng.'
        ];
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users',
            'role' => 'required',
            'password' => 'required|min:6|confirmed'
        ], $messages);

        if (!$validator->fails()) {
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);
            $user->attachRole($request->role);
            return redirect()->route('users.index')->with('message', 'Thêm mới người dùng thành công');
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }
    public function show($id){
        $user = User::findOrFail($id);
        $tmp['name'] = $user->name;
        $tmp['email'] = $user->email;
        $tmp['role'] = isset($user->roles[0]) ? $user->roles[0]->display_name : '';
        $tmp['created_at'] = date('d/m/Y H:i', strtotime($user->created_at));
        return response()->json($tmp);
    }

    public function edit($id){
        if(Auth::user()->hasPermission('update-users')) {
            $user = User::findOrFail($id);
            $roles = Role::all();
            return view('pages.users.edit')->withUser($user)->withRoles($roles);
        }
        abort(404);
    }

    public function update(Request $request, $id){
        if(!Auth::user()->hasPermission('update-users')) abort(404);

        $messages = [
            'name.required' => 'Vui lòng nhập tên.',
            'email.required' => 'Vui lòng nhập địa chỉ email.',
            'email.email' => 'Địa chỉ email không đúng.',
            'role' => 'Vui lòng chọn vai trò cho người dùng'
        ];

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'role' => 'required'
        ], $messages);

        if (!$validator->fails()) {
            $input=$request->all();
            $user = User::find($id);
            $user->name = $input['name'];
            $user->email = $input['email'];
            $user->detachRole($user->roles[0]);
            $user->attachRole($input['role']);
            if (!empty($input['password'])) {
                $user->password = bcrypt($input['password']);
            }
            if ($user->save()) {
                return redirect()->route('users.index');
            }
        }

        return redirect()->back()->withErrors($validator);

    }

    public function destroy($id){
        if(!Auth::user()->hasPermission('update-users'))
            return response()->json(['stauts'=>'error','message'=>'Không được phép !']);
        if(intval($id) === intval(Auth::user()->id))
            return response()->json(['status'=>'error','message'=>'Bạn không thể xóa chính bạn !']);
        $user = User::find($id);
        $user->delete();
        return response()->json(['status'=>'success','message'=>'Xóa '.$user->name.' thành công !']);
    }


}
