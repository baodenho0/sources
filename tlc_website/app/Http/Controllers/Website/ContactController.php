<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Contact;
use App\ContactList;

class ContactController extends Controller
{
	private $contact;
  
	public function __construct(){
		$this->contact = new Contact;
     
	}

   	public function index(){
   		$data['contact'] = $this->contact->first();
   		return view('website.contact.index',$data);
	}
	
	public function post(Request $request){

		// if($request->name=="" || $request->phone=="" || $request->description=="")
		// return response()->json(['status' => '1', 'message' => '* Vui lòng nhập đủ thông tin']);

    	$contact = new ContactList;
    	
    	$contact->name = $request->name;
    	$contact->phone = $request->phone;
    	$contact->email = $request->email;
        $contact->description = $request->description;
    	
        $contact->save();

        return back()->with('success', 'Gửi thành công!');
        // return response()->json(['status' => '1', 'message' => '* Gửi thành công!']);
	}
    
}
