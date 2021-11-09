<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;

class NenTangGiaoDichController extends Controller
{
	private $about;
  
	public function __construct(){
		$this->about = new About;
     
	}

   	public function index(){
   		$data['about'] = $this->about->find(5);
   		return view('website.nen-tang-giao-dich.index',$data);
   	}
    
}
