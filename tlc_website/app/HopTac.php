<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class HopTac extends Model
{
   protected $table = "hop_tac";

   
   public function datatable(){

      $data = $this->getAll();
   
      return Datatables::of($data)
      ->make(true);    
   }

   public function getAll(){
      return $this->orderBy('id', 'DESC');
   }
    
}

