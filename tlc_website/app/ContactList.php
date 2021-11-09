<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class ContactList extends Model
{
   protected $table = "contact_list";

   
   public function datatable(){

      $data = $this->getAll();
   
      return Datatables::of($data)
      ->make(true);    
   }

   public function getAll(){
      return $this->orderBy('id', 'DESC');
   }
    
}

