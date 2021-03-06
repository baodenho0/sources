<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\Portfolio;
use App\PortfolioType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PortfolioController extends Controller
{
    public function index()
    {
        if(!Auth::user()->hasPermission('read-portfolios')) abort(404);
        return view('pages.portfolios.index')->withPortfolios(Portfolio::all());
    }
    public function create(){
        if(!Auth::user()->hasPermission('create-portfolios')) abort(404);

        $data['type'] = PortfolioType::all();

        return view('pages.portfolios.create',$data);
    }
    public function store(Request $request){
        if(!Auth::user()->hasPermission('create-portfolios')) abort(404);
        $all = $request->only(['title','image','video_path','size','type']);
        $msgs = [];
        $validator = Validator::make($all,[
            'title'=>'required|string',
            'video_path'=>'required|string',
            'image'=>'required|image|mimes:jpg,png,jpeg',
            'size'=>'nullable|string',
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads'),$image_name);
            $all['image_path'] = 'uploads/'.$image_name;
            Portfolio::create($all);
            return redirect()->route('portfolios.index');
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }

    public function show($id)
    {
        if(!Auth::user()->hasPermission('read-portfolios')) abort(404);
        $data['type'] = PortfolioType::all();
        $data['portfolio'] = Portfolio::find($id);

        return view('pages.portfolios.show',$data);
    }


    public function edit($id)
    {
        if(!Auth::user()->hasPermission('update-portfolios')) abort(404);

        $data['type'] = PortfolioType::all();
        $data['portfolio'] = Portfolio::find($id);

        return view('pages.portfolios.edit',$data);
    }

    public function update(Request $request, $id)
    {
        if(!Auth::user()->hasPermission('update-portfolios')) abort(404);
        $all = $request->only(['title','image','video_path','size','type']);
        $msgs = [
            'title.required'=>'Vui l??ng nh???p ti??u ?????.',
            'video_path.required'=>'Vui l??ng nh???p ???????ng d???n video',
            'image.image'=>'Vui l??ng ch???n h??nh ???nh.',
            'image.mimes'=>'Vui l??ng ch???n h??nh ???nh thu???c c??c ?????nh d???ng: jpg,png,jpeg'
        ];
        $validator = Validator::make($all,[
            'title'=>'required|string',
            'video_path'=>'required|string',
            'image'=>'sometimes|image|mimes:jpg,png,jpeg',
            'size'=>'nullable|string',
        ],$msgs);
        if($validator->fails()) return redirect()->back()->withErrors($validator)->withInput();
        $image = $request->file('image');
        if($image){
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads'),$image_name);
            $all['image_path'] = 'uploads/'.$image_name;
        }
        $portfolio = Portfolio::find($id); 
        $portfolio->update($all);
        return redirect()->route('portfolios.show',$id);
    }
    public function destroy($id)
    {
        $portfolio = Portfolio::find($id);
        if(!$portfolio) return redirect()->back()->with(['error'=>'Portfolio kh??ng t???n t???i']);
        $portfolio->delete();
        return response()->json(['status' => 'success', 'message' => 'X??a portfolios  ' . $portfolio->title . ' th??nh c??ng.']);
    }
}
