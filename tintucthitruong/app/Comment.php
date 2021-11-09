<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comment';

    protected $fillable = [
    	'id',
    	'post_id',
    	'name',
    	'email',
    	'website',
    	'content',
    	'created_at',
    	'updated_at'
    ];

    public function getByPostId($postId){
    	return self::where("post_id",$postId)
    			->get();
    }



   
}
