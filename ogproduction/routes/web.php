<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::post('/auto-save', function (Illuminate\Http\Request $request) {
 $all = $request->only(['category_id','title','description','post_id','body','status']);
 $validator = Validator::make($all,[
    'category_id'=>'required|integer|exists:categories,id',
    'title'=>'required',
    'description'=>'required',
    'body'=>'required'
],[
    'category_id.required'=>'',
    'category_id.exists'=>'',
    'title.required'=>'',
    'description.required'=>'',
    'body.required'=>'',
]);
 if($validator->fails()) return redirect()->back()->withErrors($validator);
 $all['slug'] = str_slug($all['title']);
 $all['user_id'] = Auth::user()->id;
 $all['created_at'] = date('Y-m-d H:i:s');
 $all['updated_at'] = date('Y-m-d H:i:s');
 if($all["post_id"]==null)
 {
    $post = Post::create($all);
    return response()->json(['post_id' => $post->id]);
}
else
{
  $post = Post::find($all["post_id"])->update($all);
  return response()->json(['post_id' => $post->id]);
}
})->name("posts.autosave");
Route::get('/', function () {
    return view('public.index');
});
Route::get('/videos/{slug}', function () {
    return view('public.videos');
});
Route::get('/bai-viet', function () {
    $posts=\App\Post::where("status",0)->orderBy('id', 'desc')->paginate(12);
    return view('public.bai-viet',compact('posts'));
});
Route::get('/bai-viet/{slug}', function ($slug) {
    $post=\App\Post::where("slug",$slug)
    ->leftJoin('users','users.id','=','posts.user_id')
    ->select('posts.*','users.name as username')
    ->first();
    $post->view=$post->view+1;
    $post->save();
    return view('public.chi-tiet-bai-viet',compact('post'));
});
Route::get('/lien-he', function () {
    $contact=\App\Contact::first();
    return view('public.lien-he',compact('contact'));
});
Route::get('/galleries-hinh-anh/{id}', function ($id) {
    $galleries=\App\Gallery::where('gallery_type_id',$id)->orderBy('index_id','asc')->get();
    return view('public.galleries',compact('galleries'));
});
Route::get('/galleries-hinh-anh/chi-tiet/{id}', function ($id) {
    $gallery = \App\Gallery::where('id',$id)->first();
    return view('public.gallery',compact('gallery'));
});
Route::get('/updateIndex/{id}/{index_id}', function ($id,$index_id) {
    $image=\App\Image::find($id);    
    $image->index_id=$index_id;
    $image->save();
    return response()->json(['status' => 'success', 'message' => 'Cập nhật thứ tự thành công.']);

});

Auth::routes();

Route::middleware('role:superadmin|admin|user')->group(function(){
    Route::get('/dashboard','HomeController@index')->name('dashboard');
    Route::get('/logout','Auth\LoginController@logout')->name('logout');
    Route::middleware('role:superadmin|admin|user')->group(function (){
        Route::resource('/portfolios-type','OgProduction\PortfolioTypeController');

        Route::resource('users', 'Admin\UserController');
        Route::resource('permissions', 'Admin\PermissionController');
        Route::resource('roles','Admin\RoleController');
        Route::resource('menus','Admin\MenuController');
        Route::get('menus/menu-builder/{menuId}','Admin\MenuItemController@index')->name('menu-builder.index');
        Route::put('menus/menu-builder/{menuId}','Admin\MenuItemController@update')->name('menu-builder.update'); // ajax
        Route::get('/menus/menu-builder/show/{itemId}','Admin\MenuItemController@showItem')->name('menu-item.show');
        Route::post('/menus/menu-builder/create/{menuId}','Admin\MenuItemController@storeItem')->name('menu-item.store');
        Route::put('/menus/menu-builder/update/{itemId}','Admin\MenuItemController@updateItem')->name('menu-item.update');
        Route::delete('/menus/menu-builder/delete/{itemId}','Admin\MenuItemController@destroyItem')->name('menu-item.destroy');

        Route::resource('contact','OgProduction\ContactController');
        Route::resource('/footerphoto','OgProduction\FooterPhotoController');

        Route::resource('sliders','OgProduction\SliderController');
        Route::resource('/portfolios','OgProduction\PortfolioController');
        Route::delete('/portfolios-delete/{id}','OgProduction\PortfolioController@destroy')->name('portfolios.delete');
        Route::resource('/galleries','OgProduction\GalleryController');
        Route::get('/galleries/{id}/create-image','OgProduction\GalleryController@showAddImage')->name('galleries.images.create');
        Route::post('/galleries/{id}/create-image','OgProduction\GalleryController@addImage')->name('galleries.images.store');
        Route::delete('/galleries/{id}/delete-image','OgProduction\GalleryController@deleteimage')->name('galleries.images.deleteimage');
        Route::delete('/galleries/{id}/delete-gallery','OgProduction\GalleryController@destroy')->name('galleries.destroy');
        Route::resource('/categories','OgProduction\CategoryController');
        Route::resource('/posts','OgProduction\PostController');
        Route::post('/posts/search','OgProduction\PostController@index')->name('post.status');

        Route::delete('/posts/{id}/delete','OgProduction\PostController@destroy')->name('posts.destroy');
        Route::post("/upload",function(){
            $url = url('/');

            reset($_FILES);
            $temp = current($_FILES);

            if(is_uploaded_file($temp['tmp_name']))
            {
                if(preg_match("/([^\w\s\d\-_~,;:\[\]\(\).])|([\.]{2,})/", $temp['name'])){
                    header("HTTP/1.1 400 Invalid file name,Bad request");
                    return;
                }

    // Validating Image file type by extensions
                if(!in_array(strtolower(pathinfo($temp['name'], PATHINFO_EXTENSION)), array("gif", "jpg", "png"))){
                    header("HTTP/1.1 400 Invalid extension,Bad request");
                    return;
                }

                $fileName = "uploads/" . $temp['name'];
                move_uploaded_file($temp['tmp_name'], $fileName);
                $fileName="/".$fileName;
                echo json_encode(array('file_path' =>$fileName));
            }
        }
    )->name('upload');
    });
});


