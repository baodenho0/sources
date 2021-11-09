<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContactList;
use App\Functions\General;

class ContactListController extends Controller
{
	private $contactList;

    public function __construct(){
    	$this->contactList = new ContactList;
    }

    public function index(){
    	return view("admin.contact_list.index");
    }

    public function datatable(){
        return $this->contactList->datatable();
    }

    public function delete(Request $request){
        $this->postType->deleteById($request->id);

        $result = [
            'status'=>1
        ];

        return response()->json($result);
    }
}
