<?php

namespace App\Http\Controllers\OgProduction;

use App\Brokers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Helpers\ImageHelper;

class BrokersController extends Controller
{
	private $imageHelper;
	private $brokers;

    public function __construct(){
        $this->imageHelper = new ImageHelper;
        $this->brokers = new Brokers;
    }

    public function index(){
    	$data['brokers'] = Brokers::paginate(10);

    	return view('pages.brokers.index',$data);
    }

    public function create()
    {
        return view('pages.brokers.create');
    }

    public function store(Request $request)
    { 
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'image' => 'image|mimes:jpg,png,jpeg',
        ], [
          
        ]);

        if ($validator->fails()) return redirect()->back()->withErrors($validator);       


        $image = $request->image;

        if ($image != null) {
            $image_name = 'brokers-' . time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('uploads/brokers'), $image_name);
            $image_path = 'uploads/brokers/' . $image_name;
        } 

        $brokers = $this->brokers;
        $brokers->name = $request->name;
        $brokers->url = $request->url;
        $brokers->description = $request->description;
        $brokers->score = $request->score;
        if($image != null){
            $brokers->image = $image_path;
        }
        
        $brokers->save();
        
        return redirect()->route('brokers')->with(['success' => 'Cập nhật thành công.']);

    }

    public function edit($id)
    {
        $data['brokers'] = $this->brokers->getById($id);

        return view('pages.brokers.edit', $data);
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
            $image_name = 'brokers-' . time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('uploads/brokers'), $image_name);
            $image_path = 'uploads/brokers/' . $image_name;
        } 

        $brokers = $this->brokers->getById($id);
        $brokers->name = $request->name;
        $brokers->url = $request->url;
        $brokers->description = $request->description;
        $brokers->score = $request->score;
        if($image != null){
        	$brokers->image = $image_path;
        }
        
        $brokers->save();
        
        return redirect()->route('brokers')->with(['success' => 'Cập nhật thành công.']);

    }

    public function destroy($id){
        $brokers = $this->brokers->find($id);
        if ($brokers)
            $brokers->delete();
        return response()->json(['status' => 'success', 'message' => 'Xóa bài viết  ' . $brokers->title . ' thành công.']);
    }
}