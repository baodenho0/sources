<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FooterPhoto extends Model
{
    protected $table = 'footerphoto';
    protected $fillable = ['id','image_path'];
    protected $hidden = ['created_at','updated_at'];
}
