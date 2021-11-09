<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;

class DoiTacChienLuocController extends Controller
{
	private $about;
  
	public function __construct(){
		$this->about = new About;
     
	}

   	public function index(){
   		$data['about'] = $this->about->find(3);
   		return view('website.doi-tac-chien-luoc.index',$data);
   	}
    
}
