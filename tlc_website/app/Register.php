<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class Register extends Model
{
   protected $table = "register";

   
   public function datatable(){

      $data = $this->getAll();
   
      return Datatables::of($data)
      ->make(true);    
   }

   public function getAll(){
      return $this->orderBy('id', 'DESC');
   }
    
}

