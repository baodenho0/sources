<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Map extends Model
{
    protected $table = 'map';

    protected $fillable = [
    	"id",
    	"iframe",
    	"created_at",
    	"updated_at"
    ];

    
}
