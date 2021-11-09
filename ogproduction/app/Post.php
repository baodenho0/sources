<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable = ['updated_at','created_at','category_id','title','slug','image_path','description','body','user_id','status'];

    public function catg()
    {
        return $this->belongsTo(\App\Category::class, 'category_id', 'id');
    }   
}
