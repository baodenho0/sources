<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    protected $table = 'portfolios';
    protected $fillable = ['title','image_path','video_path','size'];
    protected $hidden = ['create_at','updated_at'];
}
