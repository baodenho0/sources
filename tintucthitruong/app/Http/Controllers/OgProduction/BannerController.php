<?php

namespace App\Http\Controllers\OgProduction;

use App\Banner;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Helpers\ImageHelper;

class BannerController extends Controller
{
	private $imageHelper;
	private $banner;

    public function __construct(){
        $this->imageHelper = new ImageHelper;
        $this->banner = new Banner;
    }

    public function index(){
    	$data['banners'] = Banner::paginate(10);

    	return view('pages.banners.index',$data);
    }

    public function edit($id)
    {
        $data['banner'] = $this->banner->getById($id);

        return view('pages.banners.edit', $data);
    }


    public function update(Request $request, $id)
    { 
    	// dd($request->all());
        $validator = Validator::make($request->all(), [
            'image' => 'image|mimes:jpg,png,jpeg',
        ], [
          
        ]);

        if ($validator->fails()) return redirect()->back()->withErrors($validator);       


        $image = $request->image;

        if ($image != null) {
            $image_name = 'banners-' . time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('uploads/banners'), $image_name);
            $image_path = 'uploads/banners/' . $image_name;
        } 

        $banner = $this->banner->getById($id);
        $banner->name = $request->name;
        $banner->url = $request->url;
        if($image != null){
        	$banner->image = $image_path;
        }
        
        $banner->save();
        
        return redirect()->route('banners')->with(['success' => 'Cập nhật thành công.']);

    }
}