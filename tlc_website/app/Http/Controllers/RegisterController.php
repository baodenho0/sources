<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Register;
use App\Functions\General;

class RegisterController extends Controller
{
	private $register;

    public function __construct(){
    	$this->register = new Register;
    }

    public function index(){
    	return view("admin.register_list.index");
    }

    public function datatable(){
        return $this->register->datatable();
    }


}
