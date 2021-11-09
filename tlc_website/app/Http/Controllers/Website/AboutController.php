<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;

class AboutController extends Controller
{
	private $about;
  
	public function __construct(){
		$this->about = new About;
     
	}

   	public function index(){
   		$data['about'] = $this->about->first();
   		return view('website.about.index',$data);
   	}
    
}
