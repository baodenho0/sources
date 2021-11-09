<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\QuestionAnswer;

class QuestionAnswerController extends Controller
{
	private $QandA;
  
	public function __construct(){
		$this->QandA = new QuestionAnswer;
     
	}

   	public function index(){
   		$data['questionanswer'] = $this->QandA->get();

   		return view('website.questionanswer.index',$data);
   	}
    
}
