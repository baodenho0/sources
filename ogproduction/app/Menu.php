<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Menu extends Model
{
    protected $table = 'menus';
    protected $fillable = ['name'];

    public function items(){
        return $this->hasMany('App\MenuItem');
    }
}
