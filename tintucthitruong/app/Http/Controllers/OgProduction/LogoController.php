<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\Logo;
use Illuminate\Http\Request;
use App\Image;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LogoController extends Controller
{
    public function edit()
    {   
        $data['logo'] = Logo::first();

        return view('pages.logo.edit',$data);
    }

    public function update(Request $request)
    {
        $all = $request->only(['name','image']);
        $msgs = [];
        $validator = Validator::make($all,[
            'name'=>'required|string',           
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            if($image != null)
            {
                $image_name = time().'.'.$image->getClientOriginalExtension();
                $image->move(public_path('/uploads'),$image_name);
                $all['image'] = 'uploads/'.$image_name;
            }

            $slider = Logo::first();
            if($slider){
                $slider->update($all);
            } else {
                Logo::create($all);
            }

            return redirect()->route('logo.edit')->with(['success'=>'Cập nhật Logo thành công.']);
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }
    
}
