<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Comment;
use App\Helpers\PreventXSSHelper;
use App\Helpers\DateTimeHelper;

class CommentController extends Controller
{
	private $comment;
	private $preventXSSHelper;
	private $dateTimeHelper;

	public function __construct(){
		$this->comment = new Comment;
		$this->preventXSSHelper = new PreventXSSHelper;
		$this->dateTimeHelper = new DateTimeHelper;
	}

	public function getCommentByPostId(Request $request){
		$comment = $this->comment->getByPostId($request->postId);
		$comment = $this->dateTimeHelper->formatArrDateTime($comment);

		return response()->json(["status"=>1,"data"=>$comment]);
	}

	public function saveComment(Request $request){
		$email = $this->preventXSSHelper->run($request->email);
		$website = $this->preventXSSHelper->run($request->website);
		$name = $this->preventXSSHelper->run($request->name);
		$content = $this->preventXSSHelper->run($request->content);

		$arr = [
			"post_id" => $request->postId,
			"name" => $name,
			"email" => $email,
			"website" => $website,
			"content" => $content,
		];
		// dd($arr);
		$this->comment->create($arr);

		return response()->json(["status"=>1,"msg"=>"saved successfully"]);
	}

}