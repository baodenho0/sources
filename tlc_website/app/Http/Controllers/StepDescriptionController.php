<?php

namespace App\Http\Controllers;

use App\Functions\General;
use Illuminate\Http\Request;
use App\StepDescription;

class StepDescriptionController extends Controller
{
	private $step_description ;

	public function __construct(){
		$this->step_description = new StepDescription;
	}

    public function index()
    {
    	return view('admin.step_description.index');
    }

    public function getEdit(Request $request){
    	$data = $this->step_description->getStepDescriptionByID($request->id);

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
			'description' => $request->description
    	];
    	

    	$this->step_description->updateByArr($request->id,$arr);

    	$result = [
            'status' => 1,          
        ];

        return response()->json($result);
    }

    public function getAdd(){
    	return view('admin.step_description.add_or_edit');
    }

    public function postAdd(Request $request){

    	$arr = [
			'name' => $request->name,
			'description' => $request->description
    	];

    	$this->step_description->createByArr($arr);

    	return redirect()->route('step_description')->with('success','Created successfully');
    }

    public function datatable(){
    	return $this->step_description->datatable();
    }

    public function delete(Request $request){
    	$this->step_description->deleteById($request->id);

    	$result = [
    		'status'=>1
    	] ;

    	return response()->json($result);
    }

    
}
