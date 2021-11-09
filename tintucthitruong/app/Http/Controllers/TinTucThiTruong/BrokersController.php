<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Brokers;

class BrokersController extends Controller
{
	private $brokers;

	public function __construct(){
		$this->brokers = new Brokers;
	}

	public function index(){
		$data['brokers'] = $this->brokers->all();

		return view("public.brokers.index",$data);
	}
}