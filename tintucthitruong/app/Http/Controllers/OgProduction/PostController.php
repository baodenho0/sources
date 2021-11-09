<?php

namespace App\Http\Controllers\OgProduction;

use App\Category;
use App\Post;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use App\Helpers\ImageHelper;

class PostController extends Controller
{
    private $imageHelper;

    public function __construct(){
        $this->imageHelper = new ImageHelper;
    }

    public function index(Request $request)
    {
        $status = $request->input('status');
        $categories = Category::paginate(10);
        $oSelect = DB::table('role_user')
            ->select('role_user.user_id as id')
            ->where('role_user.user_id', Auth::user()->id)->first();
        if ($status!='' && $status!=10) {
            if ($oSelect->id == 3) {
                $posts = Post::where('posts.user_id', Auth::user()->id)
                    ->where('status', $status)
                    ->orderBy('id', 'desc')->paginate(10);
            } else {
                $posts = Post::orderBy('id', 'desc')
                    ->where('posts.status', $status)
                    ->paginate(10);
            }
        } else {

            if ($oSelect->id == 3) {
                $posts = Post::where('posts.user_id', Auth::user()->id)
                    ->orderBy('id', 'desc')->paginate(10);
            } else {
                $posts = Post::orderBy('id', 'desc')->paginate(10);
            }
        }

        return view('pages.posts.index',['status'=>$status])->withCategories($categories)->withPosts($posts);
    }

    public function create()
    {
        $oSelect = DB::table('role_user')
            ->select('role_user.user_id as id')
            ->where('role_user.user_id', Auth::user()->id)->first();
        $category = Category::all();

        return view('pages.posts.create', ['oSelect' => $oSelect, 'categories' => $category]);
    }


    public function store(Request $request)
    {
        // dd($request->all());
        $all = $request->only(['category_id', 'title', 'description', 'image', 'body', 'status']);

        $validator = Validator::make($all, [
            'category_id' => 'required|integer|exists:categories,id',
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image|mimes:jpg,png,jpeg',
            'body' => 'required'
        ], [
           
        ]);
        if ($validator->fails()) return redirect()->back()->withErrors($validator);
        $all['slug'] = str_slug($all['title']);
        $image = $request->file('image');

        $file_extension = $image->getClientOriginalExtension();
        $image_name = 'posts-' . time() . '.' . $file_extension;
        $image->move(public_path('uploads/posts'), $image_name);

        $this->imageHelper->CreateThumbImage($request->root()."/uploads/posts/".$image_name, "uploads/posts/new_".$image_name,$file_extension);

        $all['image_path'] = 'uploads/posts/new_' . $image_name;
        $all['user_id'] = Auth::user()->id;
        $all['created_at'] = date('Y-m-d H:i:s');
        $all['updated_at'] = date('Y-m-d H:i:s');

        $all['body'] = $this->imageHelper->uploadImageSummerNote($all['body']);

        // dd($all);
        $post = new Post;
        $post ->category_id = $request->category_id;
        $post ->title = $request->title;
        $post ->slug = $all['slug'];
        $post ->description = $request->description;
        $post ->image_path = $all['image_path'];
        $post ->body = $all['body'];
        $post ->status = $request->status;
        $post ->user_id = $all['user_id'];
        $post ->created_at = $all['created_at'];
        $post ->updated_at = $all['updated_at'];
        $post->save();

        if ($request->all()['issavedraft'] == null) {
            return redirect()->route('posts.show', $post->id)->with(['success' => 'Thêm mới bài viết thành công.']);
        } else {
            return $this->edit($post->id);
        }
    }

    public function show($id)
    {
        // dd('dd');
        return view('pages.posts.show')->withPost(Post::find($id));
    }

    public function edit($id)
    {
        $oSelect = DB::table('role_user')
            ->select('role_user.user_id as id')
            ->where('role_user.user_id', Auth::user()->id)->first();
        return view('pages.posts.edit', ['oSelect' => $oSelect])->withPost(Post::find($id))->withCategories(Category::all());
    }


    public function update(Request $request, $id)
    {

        $image_hidden = $request->input()["image_hidden"];
        $all = $request->only(['category_id', 'title', 'description', 'image', 'body', 'status', 'image_hidden']);
        $validator = Validator::make($all, [
            'category_id' => 'required|integer|exists:categories,id',
            'title' => 'required',
            'description' => 'required',
            // 'image_hidden' => 'required',
            'image' => 'image|mimes:jpg,png,jpeg',
            'body' => 'required'
        ], [
            
        ]);
        if ($validator->fails()) return redirect()->back()->withErrors($validator);
        $post = Post::find($id);
        $all['slug'] = str_slug($all['title']);

        $image = $request->file('image');
        if ($image != null) {
            
            $file_extension = $image->getClientOriginalExtension();
            $image_name = 'posts-' . time() . '.' . $file_extension;
            $image->move(public_path('uploads/posts'), $image_name);

            $this->imageHelper->CreateThumbImage($request->root()."/uploads/posts/".$image_name, "uploads/posts/new_".$image_name,$file_extension);
            $all['image_path'] = 'uploads/posts/new_' . $image_name;
        }
        $all['updated_at'] = date('Y-m-d H:i:s');

        $all['body'] = $this->imageHelper->uploadImageSummerNote($all['body']);
        
        $post->update($all);
        if ($request->all()['issavedraft'] == null) {
            return redirect()->route('posts.show', $post->id)->with(['success' => 'Cập nhật bài viết thành công.']);
        } else {
            return $this->edit($post->id);
        }
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if ($post)
            $post->delete();
        return response()->json(['status' => 'success', 'message' => 'Xóa bài viết  ' . $post->title . ' thành công.']);
    }


}
