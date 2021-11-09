<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use App\Functions\General;

class DoiTacChienLuocController extends Controller
{
    public function getEdit(){
    	$data['about'] = About::find(3) ?? null;

    	return view('admin.doitac-chienluoc.index',$data);
    }

    public function postEdit(Request $request){
    	$about = About::find(3);
  //   	if(!$about){
  //   		$about = new About;
		// }
		if($request->hasFile('image')){
            $about->image = General::uploadImage(null,$request->image,null);
        }
       
        $content = $request->content;
        $about->content = General::uploadImageSummerNote($content);

       
        $about->save();
        return back()->with('success','Updated successfully');
    }
}
