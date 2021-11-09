<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\PortfolioType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PortfolioTypeController extends Controller
{
    public function index()
    {       
        return view('pages.portfolios_type.index')->withPortfolios(PortfolioType::all());
    }
    public function create(){        

        return view('pages.portfolios_type.create');
    }
    public function store(Request $request){
    	$arr = [
    		'title' => $request->title,
    		'slug' => str_slug($request->title),
    	];
          
        PortfolioType::create($arr);
        return redirect()->route('portfolios-type.index');        
    }

    public function show($id)
    {
        $data['portfolio'] = PortfolioType::find($id);

        return view('pages.portfolios.show',$data);
    }


    public function edit($id)
    {
        // if(!Auth::user()->hasPermission('update-portfolios')) abort(404);

        $data['portfolio'] = PortfolioType::find($id);

        return view('pages.portfolios_type.edit',$data);
    }

    public function update(Request $request, $id)
    {
        // if(!Auth::user()->hasPermission('update-portfolios')) abort(404);
        // $all = $request->only(['title','image','video_path','size','type']);
        // $msgs = [
        //     'title.required'=>'Vui lòng nhập tiêu đề.',
        //     'video_path.required'=>'Vui lòng nhập đường dẫn video',
        //     'image.image'=>'Vui lòng chọn hình ảnh.',
        //     'image.mimes'=>'Vui lòng chọn hình ảnh thuộc các định dạng: jpg,png,jpeg'
        // ];
        // $validator = Validator::make($all,[
        //     'title'=>'required|string',
        //     'video_path'=>'required|string',
        //     'image'=>'sometimes|image|mimes:jpg,png,jpeg',
        //     'size'=>'nullable|string',
        // ],$msgs);
        // if($validator->fails()) return redirect()->back()->withErrors($validator)->withInput();
        // $image = $request->file('image');
        // if($image){
        //     $image_name = time().'.'.$image->getClientOriginalExtension();
        //     $image->move(public_path('/uploads'),$image_name);
        //     $all['image_path'] = 'uploads/'.$image_name;
        // }
        
        $portfolio = PortfolioType::find($id); 
        $arr = [
    		'title' => $request->title,
    		'slug' => str_slug($request->title),
    	];
        $portfolio->update($arr);
        return redirect()->route('portfolios-type.index',$id);
    }
    public function destroy($id)
    {
        $portfolio = PortfolioType::find($id);
        if(!$portfolio) return redirect()->back()->with(['error'=>'Portfolio type không tồn tại']);
        $portfolio->delete();
        return response()->json(['status' => 'success', 'message' => 'Xóa portfolios type  ' . $portfolio->title . ' thành công.']);
    }
}
