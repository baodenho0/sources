<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Step;
use App\Functions\General;

class StepController extends Controller
{
   
    public function get(){
    	$data['step'] = Step::first();
    	return view('admin.step.index',$data);
    }

    public function post(Request $request){
    	$step = Step::first();
    	if(!$step){
    		$step = new Step;
    	}
        // $step->title = $request->title;

    	if($request->hasFile('image')){
    		$step->image = General::uploadImage($request->hasFile('image'),$request->image,$step->image);
    	}    	
    	
        $step->save();
        return back()->with('success','Update Step Success!');
    }

  
}
