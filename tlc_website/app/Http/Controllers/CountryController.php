<?php

namespace App\Http\Controllers;

use App\Functions\General;
use Illuminate\Http\Request;
use App\Country;

class CountryController extends Controller
{
	private $country ;

	public function __construct(){
		$this->country = new Country;
	}

    public function index()
    {
    	return view('admin.country.index');
    }

    public function getEdit(Request $request){
    	$data = $this->country->getCountryByID($request->id);

    	$result = [
            'status' => 1,
            'data' =>  $data,           
        ];

        return response()->json($result);
    }

    public function postEdit(Request $request)
    {

    	$arr = [
    		'name' => $request->name,
    	];
    	

    	$this->country->updateByArr($request->id,$arr);

    	$result = [
            'status' => 1,          
        ];

        return response()->json($result);
    }

    public function getAdd(){
    	return view('admin.country.add_or_edit');
    }

    public function postAdd(Request $request){

    	$arr = [
    		'name' => $request->name,
    	];

    	$this->country->createByArr($arr);

    	return redirect()->route('country')->with('success','Created successfully');
    }

    public function datatable(){
    	return $this->country->datatable();
    }

    public function delete(Request $request){
    	$this->country->deleteById($request->id);

    	$result = [
    		'status'=>1
    	] ;

    	return response()->json($result);
    }

    
}
