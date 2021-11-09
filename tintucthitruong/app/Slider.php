<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table = 'sliders';
    protected $fillable = ['name','title','description','btn_name','btn_url','btn_route','image_path','video_path'];

    public function getAll(){
    	return self::all();
    }
}
