<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Country;

class CountryController extends Controller
{
	private $country;
  
	public function __construct(){
		$this->country = new Country;
     
	}

    public function index(){
    	$data['country'] = $this->country->getAll();
    	// dd($data['service']);
    	// echo $service; die();
    	return view('website.country.index',$data);
    }
    
}
