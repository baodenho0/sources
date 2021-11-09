<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
// use Session;

class LangController extends Controller
{
	public function vi(){
		\Session::put('lang','vi');
		return back();
	}

	public function en(){
		\Session::put('lang','en');
		return back();
	}
}