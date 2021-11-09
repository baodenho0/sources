<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GalleryTypes extends Model
{
    protected $table = 'gallery_types';
    protected $fillable = ['name'];
    
}
