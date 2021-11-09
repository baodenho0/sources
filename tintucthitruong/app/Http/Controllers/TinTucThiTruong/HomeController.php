<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CallApIHelper;
use App\Helpers\DateTimeHelper;
use App\Slider;
use App\Post;
use App\Banner;

class HomeController extends Controller
{
	private  $callApIHelper;
	private  $dateTimeHelper;
	private  $slide;
	private  $post;
	private  $banner;

	public function __construct(){
		$this->callApIHelper = new CallApIHelper;
		$this->dateTimeHelper = new DateTimeHelper;
		$this->slide = new Slider;
		$this->post = new Post;
		$this->banner = new Banner;
	}

	public function index(){
		$slide = $this->slide->getAll();

		$post = $this->post->getPostByStatusJoinCate(0); //echo $post;die;
		// echo $post; die;
		$arrPost = $this->post->formatArr($post); //dd($arrPost);

		$arr = [];
		foreach ($arrPost as $value) {
			$arr[] = $value;
		}
		sort($arr);
		// dd($arr);

		$arr5 = [];
		for($i = 0; $i < 5; $i++){
			if( isset($post[$i]) )
			{
				$arr5[] = [
				"id" => $post[$i]->post_id ?? null,
				"title" => $post[$i]->post_title ?? null,
                "slug" => $post[$i]->post_slug ?? null,
				"image_path" => $post[$i]->image_path ?? null,
				"description" => $post[$i]->description ?? null,
				"body" => $post[$i]->body ?? null,
				"count_comment" => $post[$i]->count_comment ?? null,
                "created_at" => $this->dateTimeHelper->formatDate($post[$i]->created_at) ?? null,
                "category_id" => $post[$i]->category_id ?? null,
                "category_title" => $post[$i]->category_title ?? null,
                "category_slug" => $post[$i]->category_slug ?? null
			];		
			}
				
		}
		// dd($arr5);
		// 
		$banner = $this->banner->all(); 

		$take = 4;
		$quanDiem = $this->post->getByType(1,$take); //echo $quanDiem; die;
		$quanDiem = $this->dateTimeHelper->formatArrDate($quanDiem) ?? null;

		$topView = $this->post->getByViewDesc($take);
		$topView = $this->dateTimeHelper->formatArrDate($topView);

		$topComment = $this->post->getByCommentDesc($take);
		$topComment = $this->dateTimeHelper->formatArrDate($topComment);

		$data = [
			"slide" => $slide,
			"tintuc" => $arr ?? null,
			"tintuc5" => $arr5,
			"bannerId1" => $banner[0] ?? null,
			"bannerId2" => $banner[1] ?? null,
			"bannerId3" => $banner[2] ?? null,
			"bannerId4" => $banner[3] ?? null,
			"quanDiem" => $quanDiem ?? null,
			"topView" => $topView ?? null,
			"topComment" => $topComment ?? null,
		];
		// echo $topView ;die;
		// dd($quanDiem);
		return view("public.home.index",$data);
	}

	public function getVnwallstreet(){
		// $getDateNow = $this->dateTimeHelper->getDateNow();

		$url = "https://www.vnwallstreet.com/page/finance/information";

		$result = $this->callApIHelper->Call($url,"POST");

		$result = json_decode($result,true);

		// dd($result);
		$arrResult = $result["data"]["list"];

		$arr = [];

		for($i = 0; $i < 7; $i++){
			$arr[] = $arrResult[$i];
		}
		

		return response()->json(["status"=>1,"data"=>$arr]);
	}
}