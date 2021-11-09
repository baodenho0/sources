<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brokers extends Model
{
    protected $table = 'brokers';

    protected $fillable = [
    	'id',
    	'name',
    	'url',
    	'image',
        'description',
        'score',
    	'created_at',
    	'updated_at'
    ];

    public function getById($id){
    	return self::find($id);
    }
}
