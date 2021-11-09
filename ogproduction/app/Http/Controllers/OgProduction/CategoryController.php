<?php

namespace App\Http\Controllers\OgProduction;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function index()
    {

    }

    public function create()
    {
        return view('pages.categories.create');
    }

    public function store(Request $request)
    {
        $all = ['title'=>$request->title, 'slug'=>str_slug($request->title)];
        $validator = Validator::make($all,[
            'title'=>'required',
            'slug'=>'unique:categories,slug'
        ]);
        if($validator->fails()) return redirect()->back()->withErrors($validator)->withInput();
        Category::create($all);
        return redirect()->route('categories.index')->with(['success'=>'Thêm mới danh mục thành công.']);
    }

    public function edit($id)
    {
        return view('pages.categories.edit')->withCategory(Category::find($id));
    }
    public function update(Request $request, $id)
    {
        $all = ['title'=>$request->title, 'slug'=>str_slug($request->title)];
        $validator = Validator::make($all,[
            'title'=>'required',
        ]);
        if($validator->fails()) return redirect()->back()->withErrors($validator)->withInput();
        $cate = Category::find($id);
        $cate->update($all);
        return redirect()->route('categories.index')->with(['success'=>'Cập nhật danh mục thành công.']);
    }

    public function destroy($id)
    {
        $cate = Category::find($id);
        if(!$cate) return redirect()->back()->with(['error'=>'Danh mục không tồn tại']);
        $cate->delete();
        return redirect()-route('categories.index')->with(['success'=>'Xóa danh mục '.$cate->title.' thành công.']);
    }
}
