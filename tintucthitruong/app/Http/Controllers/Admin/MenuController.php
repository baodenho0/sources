<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Menu;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;

class MenuController extends Controller
{


    public function index(){
        if(!Auth::user()->hasPermission('read-menus')) abort(404);
        $menus = Menu::all();
        return view('pages.menus.index')->withMenus($menus);
    }

    public function store(Request $request){
        if(!Auth::user()->hasPermission('create-menus')) abort(404);
        if(empty($request->name)){
            return response()->json(['status'=>'error','message'=>'Vui lòng nhập tên menu !']);
        }
        $menu = new Menu();
        $menu->name = $request->name;
        if($menu->save())
            return response()->json(['status'=>'success','message'=>'Thêm menu thành công !!']);
    }

    public function update(Request $request, $id){
        if(!Auth::user()->hasPermission('update-menus')) return response()->json(['status'=>'error','Không được phép !']);
        if(empty($request->name)){
            return response()->json(['status'=>'error','message'=>'Vui lòng nhập tên menu !!']);
        }
        $menu = Menu::findOrFail($id);
        $menu->name = $request->name;
        if($menu->save())
            return response()->json(['type'=>'success','message'=>'Cập nhật '.$menu->name.' thành công !!']);
        return response()->json(['status'=>'error','message'=>'Cập nhập '.$menu->name.' không thành công !! Vui lòng thử lại.']);
    }

    public function destroy($id){
        if(!Auth::user()->hasPermission('delete-menus')) return response()->json(['status'=>'error','message'=>'Không được phép !']);
        $menu = Menu::findOrFail($id);
        if($menu->delete())
            return response()->json(['status'=>'success','message'=>'Xóa '.$menu->name.' thành công !!']);
    }
}
