<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Helpers\DateTimeHelper;
use DB;

class Post extends Model
{   
    private $dateTimeHelper; 

    public function __construct(){
        $this->dateTimeHelper = new DateTimeHelper;
    }

    protected $table = 'posts';

    protected $fillable = [
        'id',
        'category_id',
        'title',
        'slug',
        'image_path',
        'description',
        'body',
        'view',
        'user_id',
        'status',
        'updated_at',
        'created_at',
        'type'
    ];

    public function catg()
    {
        return $this->belongsTo(\App\Category::class, 'category_id', 'id');
    }   

    public function createPost($arr){
        return self::create($arr);
    }

    /**
     * $status = 0 => hien thi
     * $status = 1 => khong hien thi
     * $status = 2 => cho duyen
     * @param  int $status
     * @return query
     */
    public function getPostByStatusJoinCate($status){
    	return self::select(
            DB::raw('COUNT(comment.id) as count_comment'),
    		"posts.id as post_id",
    		"posts.title as post_title",
    		"posts.slug as post_slug",
            "posts.created_at as created_at",
    		"image_path",
    		"description",
    		"body",
    		"categories.id as category_id",
    		"categories.title as category_title",
            "categories.slug as category_slug"
    	)
		->where("status",$status)
        ->where("type",NULL)
		->join("categories","category_id","categories.id")
        ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
        ->groupBy('posts.id')
		->orderBy("post_id","desc")
		->get();
    }

    public function formatArr($post){
    	$arr = [];
		foreach ($post as $key => $value) {
			$arr[] = [
				"category_id" => $value->category_id,
				"category_name" => $value->category_title,
                "category_slug" => $value->category_slug,
			];
		}

		$arr =  array_map("unserialize", array_unique(array_map("serialize", $arr)));
		// $arr = array_keys($arr);
        
		foreach ($arr as $key => $value) {
			foreach ($post as $valuePost) {
				if($value["category_id"] == $valuePost->category_id){
					$arr[$key]["post"][] = [
						"id" => $valuePost->post_id,
						"title" => $valuePost->post_title,
                        "slug" => $valuePost->post_slug,
						"image_path" => $valuePost->image_path,
						"description" => $valuePost->description,
						"body" => $valuePost->body,
                        "count_comment" => $valuePost->count_comment,
                        "created_at" => $this->dateTimeHelper->formatDate($valuePost->created_at)
					];
				}
			}
		}
		return $arr;
    }

    public function getBySlug($slug){
        return self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    "view",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    )
                    ->where("posts.slug",$slug)
                    ->where("status",0)
                    ->join("categories","category_id","categories.id")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->first();
    }

    public function get5ByCateId($cateId){
        return self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    'posts.*'
                    )
                    ->where("category_id",$cateId)
                    ->where("status",0)
                    ->where("type",NULL)
                    ->take(5)
                    ->orderBy("id","desc")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->get();
    }

    public function getByCategorySlug($slug,$take, $skip, $type = null){
        $data = self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    );
        if($slug){
            $data = $data->where("categories.slug",$slug);
        }                    
            $data = $data->join("categories","category_id","categories.id")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->where("status",0)
                    ->where("type",$type)
                    ->orderBy("posts.id","desc")
                    ->take($take)
                    ->skip($skip)
                    ->get();

        return $data;
    }

    public function getTotalByCategorySlug($slug, $type = null){
        $data = self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    );
        if($slug){
            $data = $data->where("categories.slug",$slug);
        }                    
            $data = $data->join("categories","category_id","categories.id")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->where("status",0)
                    ->where("type",$type)
                    ->orderBy("posts.id","desc")                
                    ->get();

        return $data;
    }

    public function getPaginateByCategorySlug($slug, $paginate, $type = null){
        $data = self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    );
        if($slug){
            $data = $data->where("categories.slug",$slug);
        }                    
            $data = $data->join("categories","category_id","categories.id")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->where("status",0)
                    ->where("type",$type)
                    ->orderBy("posts.id","desc")                  
                    ->paginate($paginate);
        
        return $data;
    }

    public function getByViewDesc($take, $type = null){
        return self::select(
                    DB::raw('COUNT(comment.id) as count_comment'), 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    "view",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    )
                    ->join("categories","category_id","categories.id")
                    ->leftJoin('comment' , 'comment.post_id' ,'=', 'posts.id')
                    ->groupBy('posts.id')
                    // ->where("status",0)
                    ->take($take)
                    ->orderBy("view","desc")
                    ->where("type",$type)
                    ->get();
    }

    public function getByCommentDesc($take){
        return self::select( DB::raw('COUNT(comment.id) as count_comment') , 
                        "categories.id as category_id",
                        "categories.slug as category_slug",
                        "categories.title as category_title",
                        "posts.id as post_id",
                        "posts.slug as post_slug",
                        "posts.title as post_title",
                        "view",
                        'image_path',
                        'description',
                        'body',
                        'view',
                        'posts.created_at as created_at',
                        'posts.updated_at as updated_at'
                        )
                        ->join("categories","category_id","categories.id")
                        ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                        ->groupBy('posts.id')
                        ->orderBy(DB::raw('COUNT(comment.id)'),'DESC')
                        ->take($take)
                        ->where("type",NULL)
                        // ->where("status",0)
                        ->get();
    } 

    public function getByType($type,$take){
        return self::select(
                    DB::raw('COUNT(comment.id) as count_comment') , 
                    "categories.id as category_id",
                    "categories.slug as category_slug",
                    "categories.title as category_title",
                    "posts.id as post_id",
                    "posts.slug as post_slug",
                    "posts.title as post_title",
                    'image_path',
                    'description',
                    'body',
                    'view',
                    'posts.created_at as created_at',
                    'posts.updated_at as updated_at'
                    )
                    ->join("categories","category_id","categories.id")
                    ->leftjoin('comment' , 'comment.post_id' , 'posts.id')
                    ->groupBy('posts.id')
                    ->where("status",0)
                    ->where("type",$type)
                    ->orderBy("posts.id","desc")
                    ->take($take)
                    ->get();
    }  

    public function updateViewBySlug($slug){
        $data = self::where("slug",$slug)->first();
        $data->view = $data->view + 1;
        $data->save();
        return $data;
    }



    
}
