<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\Gallery;
use App\GalleryTypes;
use App\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class GalleryController extends Controller
{
    public function index()
    {
        $galleries = Gallery::all();
        return view('pages.galleries.index')->withGalleries($galleries);
    }
    public function create(){
        if(!Auth::user()->hasPermission('create-galleries')) abort(404);
        $gallery_types = GalleryTypes::all();
        return view('pages.galleries.create',compact('gallery_types'));
    }

    public function store(Request $request){
        $all = $request->only('title','gallery_type_id','image','index_id','show_home');
        $validator = Validator::make($all,[
            'title'=>'required',
            'gallery_type_id'=>'required',
            'image'=>'required|image|mimes:jpg,png,jpeg'
        ],
        ['title.required'=>'Vui lòng nhập tên bộ sưu tập.',
        'gallery_type_id.required'=>"Vui lòng chọn Thể Loại Ảnh"
        ]
        );
        if(!$validator->fails()){

            $image = $request->file('image');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('/uploads/galleries'),$image_name);
            $all['image_path'] = 'uploads/galleries/'.$image_name;
            Gallery::create($all);
            
            return redirect()->route('galleries.index');
        }
        return redirect()->back()->withErrors($validator)->withInput();

    }

    public function update(Request $request, $id)
    {
        if(!Auth::user()->hasPermission('update-galleries')) abort(404);
        $all = $request->only(['gallery_type_id','title','image','index_id','show_home']);
        $msgs = [
            'gallery_type_id.required'=>'Vui lòng chọn thể loại.',
            'title.required'=>'Vui lòng nhập tên bộ sưu tập'
        ];
        $validator = Validator::make($all,[
            
            'gallery_type_id'=>'required',
            'title'=>'required'
        ],$msgs);
        if(!$validator->fails()){
            $image = $request->file('image');
            if($image != null)
            {
                $image_name = time().'.'.$image->getClientOriginalExtension();
                $image->move(public_path('/uploads/galleries'),$image_name);
                $all['image_path'] = 'uploads/galleries/'.$image_name;
            }
            
            $gallery = Gallery::find($id);
            $gallery->update($all);
            return redirect()->route('galleries.show',$id);
        }
 
    }

    public function destroy($id)
    {
        $gallery = Gallery::find($id);
        if($gallery)
            $gallery->delete();
        \App\Image::where("gallery_id",$id)->delete();
        return response()->json(['status'=>'success','message' => 'Xóa bộ sưu tập  '.$gallery->title.' thành công.']);
    }

    public function edit($id)
    {
        if(!Auth::user()->hasPermission('update-galleries')) abort(404);
        $gallery = Gallery::find($id);
        $gallery_types = GalleryTypes::all();
        return view('pages.galleries.edit',compact('gallery','gallery_types'));
    }
    public function show($id)
    {
        $gallery = Gallery::find($id);
        if(!$gallery) return redirect()->route('galleries.index')->with(['error'=>'Bộ sưu tập không tồn tại.']);
        return view('pages.galleries.show')->withGallery($gallery);
    }

    /*public function destroy($id)
    {
        $image = Image::find($id);
        if(!$image)
        // return redirect()-back()->with(['error'=>'Photo không tồn tại.']);
            return response()->json(['status'=>'error','message' => 'Hình ảnh không tồn tại.']);
        $image->delete();
        //return redirect()->route('footerphoto.index')->with(['success'=>'Xóa Photo '.$footerphoto->id.' thành công.']);
        return response()->json(['status'=>'success','message' => 'Xóa Hình '.$image->id.' thành công.']);
    }*/

    public function deleteimage($id)
    {
        $image = Image::find($id);
        if(!$image)
        // return redirect()-back()->with(['error'=>'Photo không tồn tại.']);
            return response()->json(['status'=>'error','message' => 'Hình ảnh không tồn tại.']);
        $image->delete();
        //return redirect()->route('footerphoto.index')->with(['success'=>'Xóa Photo '.$footerphoto->id.' thành công.']);
        return response()->json(['status'=>'success','message' => 'Xóa Hình '.$image->id.' thành công.']);
    }

    public function showAddImage($id)
    {
        $gallery = Gallery::find($id);
        if(!$gallery) return redirect()->back()->with(['error'=>'Bộ sưu tập không tồn tại']);
        return view('pages.galleries.create-image')->withGallery($gallery);
    }
    public function addImage(Request $request,$id)
    {
        $validator = Validator::make($request->only(['image','index_id']),[
            'image'=>'required|image|mimes:jpg,jpeg,png'
        ],[
            'image.required'=>'Vui lòng chọn ảnh cho bộ sưu tập.',
            'image.image'=>'Vui lòng chọn file ảnh.',
            'image.mimes'=>'Vui lòng chọn ảnh thuộc các định dạng: jpg,jpeg,png.'
        ]);
        if ($validator->fails()) return redirect()->back()->withErrors($validator);
        $image = $request->file('image');
        $image_name = 'gallery-'.time().'.'.$image->getClientOriginalExtension();
        $image->move(public_path('uploads/galleries'),$image_name);
        Image::create(['url'=>'uploads/galleries/'.$image_name, 'gallery_id'=>$id, 'index_id'=>$request->input()["index_id"]]);
        return redirect()->route('galleries.show',$id)->with(['success'=>'Thêm mới ảnh cho bộ sưu tập thành công.']);
    }
}
