<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\Functions\General;

class ContactController extends Controller
{
    public function getEdit(){
    	$data['contact'] = Contact::first() ?? null;

    	return view('admin.contact.index',$data);
    }

    public function postEdit(Request $request){
    	$contact = Contact::first();

    	if(!$contact){
    		$contact = new Contact;
    	}
    	$contact->address = $request->address;
    	$contact->phone = $request->phone;
		$contact->email = $request->email;
		$contact->facebook_link = $request->facebook_link;
		$contact->yelp_link = $request->yelp_link;
		$contact->google_link = $request->google_link;
        $description = $request->mission;
        $contact->mission = General::uploadImageSummerNote($description);
    	$contact->map = $request->map;
    	
        $contact->save();
        return back()->with('success','Updated successfully');
    }
}
