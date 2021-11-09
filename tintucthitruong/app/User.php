<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laratrust\Traits\LaratrustUserTrait;
use DB;

class User extends Authenticatable
{
    use Notifiable;
    use LaratrustUserTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function roles(){
        return $this->belongsToMany('App\Role');
    }
    public function permissions(){
        return $this->belongsToMany('App\Permission');
    }

    /**
     * top user ,quan diem
     */
    public function getTop4UserByPost(){
        return self::select(
            DB::raw('COUNT(posts.id) as count_post'),
           'users.id as user_id',
           'name',
           'email',
           'image'
        )
        ->where("status",0)
        ->where("type",1)
        ->join("posts","user_id","users.id")
        ->groupBy('user_id')
        ->orderBy("count_post","desc")
        ->where('lever',1)
        ->take(4)
        ->get();
    }

}
