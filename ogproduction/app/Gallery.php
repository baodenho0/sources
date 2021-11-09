<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    protected $table = 'galleries';
    protected $fillable = ['id','title','gallery_type_id','image_path','index_id','show_home'];

    public function images(){
        return $this->hasMany('App\Image')->orderBy('index_id','asc');
    }
    public function galle()
	{
	 return $this->belongsTo(\App\GalleryTypes::class, 'gallery_type_id', 'id');
	}
}
