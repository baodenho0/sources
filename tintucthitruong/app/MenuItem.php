<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    protected $table = 'menu_items';
    protected $fillable = ['menu_id','title','url','icon_class','parent_id','route'];
    public function childs(){
        return $this->hasMany('App\MenuItem','parent_id');
    }
}
