<?php

namespace App\Http\Controllers\TinTucThiTruong;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LichKinhTeController extends Controller
{
	public function index(){
		return view("public.lich-kinh-te.index");
	}
}