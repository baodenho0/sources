<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Helpers\DateTimeHelper;


class NewsController extends Controller
{
	private $post;
	private $dateTimeHelper; 

	public function __construct(){
		$this->post = new Post;
		$this->dateTimeHelper = new DateTimeHelper;
	}

	public function detail($slug){
		$this->post->updateViewBySlug($slug);

		$data['post'] = $this->post->getBySlug($slug);

		if(!$data['post']){
			die(404);
		}

		$postQuery = $this->post->get5ByCateId($data['post']->category_id);
		$data['posts5'] = $this->dateTimeHelper->formatArrDate($postQuery);

		
		// echo $data['quanDiem'];die;
		// $data['postId'] = $data['post']->id;

		return view("public.news.detail",$data);
	}


	public function category($categorySlug){

		// $data["category"] = $this->post->getByCategorySlug($categorySlug,12,0); //echo $data["category"]; die;
		$data["category"] = $this->post->getPaginateByCategorySlug($categorySlug,12);
		// echo $data["category"]; die;
		if(count($data["category"]) == 0){
			die(404);
		}

		$data['category'] = $this->dateTimeHelper->formatArrDate($data["category"]);//dd($data["category"]);

		$data["categoryTitle"] = $data["category"][0]->category_title ?? ""; 
		
		$data["categorySlug"] = $categorySlug; 
		// echo $data['category']; 
		// die; dd('dd');
		// dd($data);

		return view("public.news.category",$data);
	}

	public function getPostsByPage(Request $request){
		// dd('dd');
		$take = 12;
		$skip = $take * $request->page;
		$result = $this->post->getByCategorySlug($request->categorySlug,$take, $skip); 
		$result = $this->dateTimeHelper->formatArrDate($result);
		
		return response()->json(['status'=>1,'data'=>$result]);
	}

	public function getTopView(){
		$take = 4;
		$result = $this->post->getByViewDesc($take);
		$result = $this->dateTimeHelper->formatArrDate($result);

		return response()->json(['status'=>1,'data'=>$result]);
	}

	public function getTopComment(){
		$take = 4;
		$result = $this->post->getByCommentDesc($take);
		$result = $this->dateTimeHelper->formatArrDate($result);

		return response()->json(['status'=>1,'data'=>$result]);	
	}
}