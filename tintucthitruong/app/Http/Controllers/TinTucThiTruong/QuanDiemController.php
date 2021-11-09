<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\User;
use App\Category;
use App\Helpers\DateTimeHelper;

class QuanDiemController extends Controller
{
	private $user;
	private $post;
	private $category;
	private $dateTimeHelper; 

	public function __construct(){
		$this->user = new User;
		$this->post = new Post;
		$this->category = new Category;
		$this->dateTimeHelper = new DateTimeHelper;
	}

	public function index(){ 
		$slug = null;
		$take = 12; 
		$skip = 0;

		$data['topUser'] = $this->user->getTop4UserByPost();
		// echo $topUser; die;

		$data['category'] = $this->category->all();		

		return view("public.quan-diem.index",$data);
	}

	public function getBySlug(Request $request){	
		$take = 12; 
		$skip = 0;
		$slug = $request->slug;

		if($request->page){
			$skip = $request->page * $take;
		}
		// dd($slug);
		$quanDiem = $this->post->getByCategorySlug($slug, $take, $skip, 1);

		$total = $this->post->getTotalByCategorySlug($slug, 1);

		$totalPage = count($total)/$take;

		// echo (count($total)); die;

		$quanDiem = $this->dateTimeHelper->formatArrDate($quanDiem);

		return response()->json(['status'=>1,'data'=> $quanDiem, 'totalPage'=>CEIL($totalPage)]);
	}
}