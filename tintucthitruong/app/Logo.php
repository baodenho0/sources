<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Logo extends Model
{
    protected $table = 'logo';

    protected $fillable = [
    	'id',
    	'name',
    	'image',
    	'created_at',
    	'updated_at'
    ];

   
}
