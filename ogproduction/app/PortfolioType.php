<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PortfolioType extends Model
{
    protected $table = 'portfolios_type';
    protected $fillable = ['id','title','slug','created_at','updated_at'];
    // protected $hidden = ['create_at','updated_at'];
}
