<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Step extends Model
{
    protected $table = "step";

    public $fillable = [
    	'id',
    	'image',    	
    	'step1',
		'step2',
		'step3'
	];
	
	public function getAll(){
		return $this->where('id',1)->first();   

   }
}
