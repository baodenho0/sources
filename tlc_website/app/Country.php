<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Yajra\Datatables\Datatables;

class Country extends Model
{
    protected $table = "country";

    public $fillable = [
    	'id',
    	'name'
    ];
    public function getAll(){
    	 return $this->get();   

    }

    public function datatable(){
    	$country =$this->getAll();

        return Datatables::of($country)
        ->addColumn('action',function($country){
            return '<a href="#" data-id='.$country->id.' class="btn btn-success btn-sm edit">
            <i class="fas fa-edit"></i></a>
                <a href="#" data-id='.$country->id.' class="btn btn-danger btn-sm delete"><i class="fas fa-trash"></i></a>';
        })
        ->rawColumns(['action'])
        ->make(true);    
    }

    public function createByArr($arr){
    	return $this->create($arr);
    }

    public function getCountryById($id){
    	return $this->find($id);
    }

    public function updateByArr($id, $arr){	
    	$data = $this->getCountryById($id);
    	return $data->update($arr);
    }

    public function deleteById($id){
    	return $this->getCountryById($id)->delete();
    }
}
