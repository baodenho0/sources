<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class StepDescription extends Model
{
    protected $table = "step_description";

    public $fillable = [
    	'id',
    	'name',    	
    	'description'
	];
	
	public function getAll(){
		return $this->get();   

   }

   public function datatable(){
	$step_description =$this->getAll();

	return Datatables::of($step_description)
	->addColumn('action',function($step_description){
		return '<a href="#" data-id='.$step_description->id.' class="btn btn-success btn-sm edit">
		<i class="fas fa-edit"></i></a>';
	})
	->rawColumns(['action'])
	->make(true);    
}

public function createByArr($arr){
	return $this->create($arr);
}

public function getStepDescriptionById($id){
	return $this->find($id);
}

public function updateByArr($id, $arr){	
	$data = $this->getStepDescriptionById($id);
	return $data->update($arr);
}

public function deleteById($id){
	return $this->getStepDescriptionById($id)->delete();
}
}
