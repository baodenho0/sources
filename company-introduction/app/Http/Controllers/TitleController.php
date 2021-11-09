<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Title;

class TitleController extends Controller
{   
    /**
     * $id = 1 home page title
     * $id = 2 category page title
     * $id = 3 about page title
     * $id = 4 customer page title
     * $id = 5 contact page title
     * $id = 6 detail page title
     */
    private function runGetTitle($id){
    	$data['title'] = Title::find($id);
    	return view('admin.title.index',$data);
    }

    private function runPostTitle($id,$request){
    	$title = Title::find($id);
        if(!$title){
            $title = new Title;
        }
        $title->title = $request->title;
        $title->save();
        return back()->with('success','Update Title Success!');
    }

    public function getHome(){
    	return $this->runGetTitle(1);
    }

    public function postHome(Request $request){
    	return $this->runPostTitle(1,$request);
    }

    public function getCategory(){
    	return $this->runGetTitle(2);
    }

    public function postCategory(Request $request){
    	return $this->runPostTitle(2,$request);
    }

    public function getAbout(){
    	return $this->runGetTitle(3);
    }

    public function postAbout(Request $request){
    	return $this->runPostTitle(3,$request);
    }

    public function getCustomer(){
    	return $this->runGetTitle(4);
    }

    public function postCustomer(Request $request){
    	return $this->runPostTitle(4,$request);
    }

    public function getContact(){
    	return $this->runGetTitle(5);
    }

    public function postContact(Request $request){
    	return $this->runPostTitle(5,$request);
    }

    public function getDetail(){
        return $this->runGetTitle(6);
    }

    public function postDetail(Request $request){
        return $this->runPostTitle(6,$request);
    }
}
