<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    protected $table = "banner";

    public $fillable = [
    	'id',
    	'image',   
    	'status', 	
    	'crated_at',
    	'updated_at'
    ];
}
