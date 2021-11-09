<?php

namespace App\Http\Controllers\AdminQuanDiem;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Post;
use App\Category;
use Auth;
use DB;
use Validator;
use App\Helpers\ImageHelper;

class PostController extends Controller
{

    private $imageHelper;

    public function __construct(){
        $this->imageHelper = new ImageHelper;
    }

   public function index(Request $request){
        // $status = $request->input('status');
       

         $posts = Post::where('posts.user_id', Auth::user()->id)
                    ->where('status', 0)
                    ->orderBy('id', 'desc')->paginate(10);

        $data = [
          "posts" => $posts
          // "status" => $status
        ];

        return view("admin-quan-diem.post.index",$data);
   }

   public function create()
    {
        // $oSelect = DB::table('role_user')
        //     ->select('role_user.user_id as id')
        //     ->where('role_user.user_id', Auth::user()->id)->first();
        $data['categories'] = Category::all();
        // echo $data['categories '];die;
        return view('admin-quan-diem.post.create',$data);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $all = $request->only(['title', 'description', 'image', 'body','category_id']);
        $validator = Validator::make($all, [
            // 'category_id' => 'required|integer|exists:categories,id',
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image|mimes:jpg,png,jpeg',
            'body' => 'required'
        ], [
            // 'category_id.required' => '',
            // 'category_id.exists' => '',
            // 'title.required' => '',
            // 'description.required' => '',
            // 'image.required' => '',
            // 'image.image' => '',
            // // 'image.mimes' => '',
            // 'body.required' => '',
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
        $post ->status = 0;
        $post ->user_id = $all['user_id'];
        $post ->created_at = $all['created_at'];
        $post ->updated_at = $all['updated_at'];
        $post ->type = 1;
        $post->save();
        // dd("dd");
        // if ($request->all()['issavedraft'] == null) {
        return redirect()->route('AdminQuanDiem.posts')->with(['success' => 'Thêm mới bài viết thành công.']);
        // } else {
            // return $this->edit($post->id);
        // }
    }

    public function show($id)
    {
        // return view('pages.posts.show')->withPost(Post::find($id));
    }

    public function edit($id)
    {    
        $data['categories'] = Category::all();
        $data["post"] = Post::where("user_id",Auth::user()->id)->findOrFail($id);
        // echo         $data["post"]; die;
        return view('admin-quan-diem.post.edit', $data);
    }


    public function update(Request $request, $id)
    {

        $image_hidden = $request->input()["image_hidden"];
        $all = $request->only(['category_id', 'title', 'description', 'image', 'body', 'status', 'image_hidden']);
        $validator = Validator::make($all, [
            // 'category_id' => 'required|integer|exists:categories,id',
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
       
        return redirect()->route('AdminQuanDiem.posts')->with(['success' => 'Cập nhật bài viết thành công.']);
      
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if ($post)
            $post->delete();
        return response()->json(['status' => 'success', 'message' => 'Xóa bài viết  ' . $post->title . ' thành công.']);
    }
}
