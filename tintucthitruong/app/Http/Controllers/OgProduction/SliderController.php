<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\Slider;
use Illuminate\Http\Request;
use App\Image;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SliderController extends Controller
{
    public function index()
    {
        if(!Auth::user()->hasPermission('read-sliders')) abort(404);
        $sliders = Slider::all();
        return view('pages.sliders.index')->withSliders($sliders);
    }
    public function create(){
        return view('pages.sliders.create');
    }

    public function show($id)
    {
        if(!Auth::user()->hasPermission('read-sliders')) abort(404);
        return view('pages.sliders.show')->withSlider(Slider::find($id));
    }

    public function store(Request $request){
        if(!Auth::user()->hasPermission('create-sliders')) abort(404);
        $all = $request->only(['name','title','description','video_path','image','btn_name','btn_url','btn_route']);
        $msgs = [];
        $validator = Validator::make($all,[
            'name'=>'required|string',
            'title'=>'required|string',
            'description'=>'required|string',
            // 'video_path'=>'required|string',
            'btn_name'=>'nullable|string',
            'btn_url'=>'nullable|string',
            'btn_route'=>'nullable|string'
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads'),$image_name);
            $all['image_path'] = 'uploads/'.$image_name;

            // preg_match('/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?‌​[\w\?‌​=]*)?/',$all['video_path'],$macher);
            // if(isset($macher[1])){
            //     $all['video_path'] = $macher[1];
            // }else{
            //     return redirect()->back()->with(['error'=>'Đường dẫn video youtube không đúng định dạng.'])->withInput();
            // }
            Slider::create($all);
            return redirect()->route('sliders.index')->with(['success'=>'Thêm mới slider thành công.']);
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }

    public function edit($id)
    {
        return view('pages.sliders.edit')->withSlider(Slider::find($id));
    }

    public function update(Request $request,$id)
    {
//        if(!Auth::user()->hasPermission('update-sliders')) abort(404);
        $all = $request->only(['name','title','description','video_path','image','btn_name','btn_url','btn_route']);
        $msgs = [];
        $validator = Validator::make($all,[
            'name'=>'required|string',
            'title'=>'required|string',
            'description'=>'required|string',
            // 'video_path'=>'required|string',
            'btn_name'=>'nullable|string',
            'btn_url'=>'nullable|string',
            'btn_route'=>'nullable|string'
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            if($image != null)
            {
                $image_name = time().'.'.$image->getClientOriginalExtension();
                $image->move(public_path('/uploads'),$image_name);
                $all['image_path'] = 'uploads/'.$image_name;
            }

            // preg_match('/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?‌​[\w\?‌​=]*)?/',$all['video_path'],$macher);
            // if(isset($macher[1])){
            //     $all['video_path'] = $macher[1];
            // }else{
            //     return redirect()->back()->with(['error'=>'Đường dẫn video youtube không đúng định dạng.'])->withInput();
            // }
            $slider = Slider::find($id);
            $slider->update($all);
            return redirect()->route('sliders.index')->with(['success'=>'Cập nhật slider thành công.']);
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }

    public function destroy($id)
    {
        $slider = Slider::find($id);
        if(!$slider) return redirect()-back()->with(['error'=>'Slider không tồn tại.']);
        $slider->delete();
        // return redirect()->route('sliders.index')->with(['success'=>'Xóa slider '.$slider->name.' thành công.']);
        return response()->json(['status' => 'success', 'message' => 'Xóa slider  ' . $slider->name . ' thành công.']);
    }
}
