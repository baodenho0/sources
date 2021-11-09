<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    protected $table = 'banner';

    protected $fillable = [
    	'id',
    	'name',
    	'url',
    	'image',
    	'created_at',
    	'updated_at'
    ];

    public function getById($id){
    	return self::find($id);
    }
}
