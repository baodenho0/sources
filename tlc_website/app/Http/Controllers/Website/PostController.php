<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Post;
// use Session;

class PostController extends Controller
{
	private $post;
  
	public function __construct(){
		$this->post = new Post;
        // Session::set('lang','vi'); echo Session::get('lang');
	}

   	public function index(){
   		$data['post'] = $this->post->where('status',1)
   		->where('post_type_id', 1)->orderBy('id','desc')
   		->paginate(4);

         $data['new'] = $this->post->orderBy('id','desc')->take(3)->get();

   		return view('website.post.index',$data);
   	}

   	public function detail($slug){
   		$data['post'] = $this->post->where('slug',$slug)->first();

   		return view('website.post.detail',$data);
   	}
    
}
