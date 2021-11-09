<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use App\HopTac;
use App\Functions\General;

class HopTacController extends Controller
{
    private $hoptac;

    public function __construct(){
    	$this->hoptac = new HopTac;
    }

    public function getEdit(){
    	$data['about'] = About::find(4) ?? null;

    	return view('admin.hop-tac.index',$data);
    }

    public function postEdit(Request $request){
    	$about = About::find(4);
  //   	if(!$about){
  //   		$about = new About;
		// }
		if($request->hasFile('image')){
            $about->image = General::uploadImage(null,$request->image,null);
        }
        if($request->hasFile('icon')){
            $about->leftimage = General::uploadImage(null,$request->icon,null);
        }
        if($request->hasFile('image2')){
            $about->rightimage = General::uploadImage(null,$request->image2,null);
        }
        $content = $request->content;
        $about->content = General::uploadImageSummerNote($content);

        $about->rightcontent = General::uploadImageSummerNote($request->rightcontent);
        $about->leftcontent = General::uploadImageSummerNote($request->leftcontent);
        
        $about->save();
        return back()->with('success','Updated successfully');
    }

    public function index(){
    	return view("admin.hoptac_list.index");
    }

    public function datatable(){
        return $this->hoptac->datatable();
    }
}
