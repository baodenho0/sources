<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\FooterPhoto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class FooterPhotoController extends Controller
{
    public function index()
    {
        if(!Auth::user()->hasPermission('read-footerphoto')) abort(404);
            $footerphotos = FooterPhoto::all();
            return view('pages.footerphoto.index',compact('footerphotos'));
        
    }
    public function create(){
        if(!Auth::user()->hasPermission('create-footerphoto')) abort(404);
        return view('pages.footerphoto.create');
    }
    public function store(Request $request){
        if(!Auth::user()->hasPermission('create-footerphoto')) abort(404);
        $all = $request->only(['image']);
        $msgs = [];
        $validator = Validator::make($all,[
            'image'=>'required|image|mimes:jpg,png,jpeg',
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads'),$image_name);
            $all['image_path'] = 'uploads/'.$image_name;
            FooterPhoto::create($all);
            return redirect()->route('footerphoto.index');
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }

    public function show($id)
    {
        if(!Auth::user()->hasPermission('read-footerphoto')) abort(404);
        $footerphotos = FooterPhoto::find($id);
        return view('pages.footerphoto.show',compact('footerphotos'));
    }


    public function edit($id)
    {
        if(!Auth::user()->hasPermission('update-footerphoto')) abort(404);
        $footerphotos = FooterPhoto::find($id);
        return view('pages.footerphoto.edit',compact('footerphotos'));
    }

    public function update(Request $request, $id)
    {
        if(!Auth::user()->hasPermission('update-footerphoto')) abort(404);
        $all = $request->only(['image']);
        $msgs = [
            'image.image'=>'Vui lòng chọn hình ảnh.',
            'image.mimes'=>'Vui lòng chọn hình ảnh thuộc các định dạng: jpg,png,jpeg'
        ];
        $validator = Validator::make($all,[
            
            'image'=>'sometimes|image|mimes:jpg,png,jpeg',
        ],$msgs);
        if($validator->fails()) return redirect()->back()->withErrors($validator)->withInput();
        $image = $request->file('image');
        if($image){
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads'),$image_name);
            $all['image_path'] = 'uploads/'.$image_name;
        }
        $footerphoto = FooterPhoto::find($id);
        $footerphoto->update($all);
        return redirect()->route('footerphoto.show',$id);
    }

    public function destroy($id)
    {
        $footerphoto = FooterPhoto::find($id);
        if(!$footerphoto)
        // return redirect()-back()->with(['error'=>'Photo không tồn tại.']);
            return response()->json(['status'=>'error','message' => 'Photo không tồn tại.']);
        $footerphoto->delete();
        //return redirect()->route('footerphoto.index')->with(['success'=>'Xóa Photo '.$footerphoto->id.' thành công.']);
        return response()->json(['status'=>'success','message' => 'Xóa Photo '.$footerphoto->id.' thành công.']);
    }
}
