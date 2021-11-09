<?php

namespace App\Http\Controllers\Admin;

use App\MenuItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;

class MenuItemController extends Controller
{
    public function index($id){
        if(!Auth::user()->hasPermission('read-menus'))
            return response()->json(['status'=>'error','message'=>'Không được phép.']);
        $menuItems = MenuItem::where(['menu_id'=>$id,'parent_id'=>0])->orderBy('order','asc')->get();
        return view('pages.menus.builder', compact('menuItems'));
    }

    public function update(Request $request, $menuId){
        $menuItems = isset($request->data)?$request->data:0;
        $this->prepare($menuItems);
        return $menuItems;
    }
    private function prepare($menuItems, $parent_id = 0, $order = 0){
        foreach($menuItems as $item){
            $order++;
            $menu = MenuItem::find($item['id']);
            $menu->parent_id = $parent_id;
            $menu->order = $order;
            $menu->save();
            if(array_key_exists('children',$item)){
                $this->prepare($item['children'],$item['id'], $order);
            }
        }
    }

    public function updateItem(Request $request, $itemId){
        if(!Auth::user()->hasPermission('update-menus'))
            return response()->json(['status'=>'error','message'=>'Không được phép.']);
        $validator = Validator::make($request->all(),[
            'title'=>'required'
        ],['title.required'=>'Vui lòng nhập tên menu item.']);
        if(!$validator->fails()){
            $menuItem = MenuItem::find($itemId);
            $menuItem->title = $request->title;
            $menuItem->url = $request->url;
            $menuItem->target = $request->target;
            $menuItem->icon_class = $request->icon_class;
            $menuItem->route = $request->route;
            $menuItem->parameters = $request->parameters;
            if($menuItem->save()){
                return ['status'=>'success','message'=>'Cập nhật menu item thành công.'];
            }
        }
        return ['status'=>'error','message'=>$validator->errors()->first()];
    }

    public function storeItem(Request $request, $menuId){
        if(!Auth::user()->hasPermission('create-menus'))
            return response()->json(['status'=>'error','message'=>'Không được phép.']);
        $validator = Validator::make($request->all(),[
            'title'=>'required'
        ],['title.required'=>'Vui lòng nhập tên menu item.']);
        if(!$validator->fails()){
            $menuItem = new MenuItem();
            $menuItem->menu_id = $menuId;
            $menuItem->title = $request->title;
            $menuItem->url = $request->url;
            $menuItem->target = $request->target;
            $menuItem->parent_id = 0;
            $menuItem->icon_class = $request->icon_class;
            $menuItem->route = $request->route;
            $menuItem->parameters = $request->parameters;
            if($menuItem->save()){
                return ['status'=>'success','message'=>'Thêm mới menu item thành công.'];
            }
        }
    }
    public function showItem($itemId){
        $item = MenuItem::findOrFail($itemId);
        return response()->json($item);
    }
    public function destroyItem($itemId){
        if(!Auth::user()->hasPermission('delete-menus'))
            return response()->json(['status'=>'error','message'=>'Không được phép.']);
        $item = MenuItem::findOrFail($itemId);
        if($item->delete())
            return response()->json(['status'=>'success','message'=>'Xóa '.$item->title.' thành công.']);
        return ['status'=>'error','message'=>'Xóa '.$item->title.' không thành công.'];
    }
}
