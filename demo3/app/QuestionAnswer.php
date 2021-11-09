<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class QuestionAnswer extends Model
{
    protected $table = "questionanswer";

    public $fillable = [
    	'id',
    	'question',
    	'answer',
    	'crated_at',
    	'updated_at'
    ];

    public function getAll(){
    	return $this->get();
    }

    public function getById($id){
    	return $this->find($id);
    }

    public function datatable(){

    	$data = $this->getAll();
        return Datatables::of($data) 
        ->addColumn('action',function($data){
            return '<a href="#" data-id='.$data->id.' class="btn btn-success btn-sm edit">
            <i class="fas fa-edit"></i></a>
                <a href="#" data-id='.$data->id.' class="btn btn-danger btn-sm delete"><i class="fas fa-trash"></i></a>';
        })
        ->make(true);    
    }

    public function createByArr($arr){
    	return $this->create($arr);
    }

    public function deleteById($id){
    	return $this->getById($id)->delete();
    }

    public function updateById($id,$arr){
    	return $this->getById($id)->update($arr);
    }


}