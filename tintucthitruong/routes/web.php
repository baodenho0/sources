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


Route::group(['namespace' => 'TinTucThiTruong'], function() {
    Route::get('/', "HomeController@index")->name("trang-chu");
    Route::get('get-cap-nhat-thuong-xuyen', "HomeController@getVnwallstreet")->name("getCapNhatThuongXuyen");
    Route::get('lich-kinh-te', "LichKinhTeController@index")->name("lichKinhTe");
    Route::get('brokers', "BrokersController@index")->name("brokers");

    Route::group(['prefix' => 'danh-muc'], function(){
        Route::get('/get-posts-by-page',"NewsController@getPostsByPage")->name("news.getPostsByPage");
        Route::get('/{categorySlug}',"NewsController@category")->name("news.category");


    });
    

    Route::group(['prefix' => 'tin-tuc'], function() {

        // Route::get('/top-view','NewsController@getTopView')->name("news.top-view");
        // Route::get('/top-comment','NewsController@getTopComment')->name("news.top-comment");
        
        Route::get('/{slug}', "NewsController@detail")->name("news.detail");
    });

    Route::group(['prefix' => 'binh-luan'], function() {
        Route::get('get-by-id', "CommentController@getCommentByPostId")->name("getCommentByPostId");
        Route::post('save', "CommentController@saveComment")->name("saveComment");
    });

    Route::group(['prefix' => 'quan-diem'], function() {
        Route::get('/', "QuanDiemController@index")->name("quanDiem");
        Route::get('/get-by-slug', "QuanDiemController@getBySlug")->name("quanDiem.getBySlug");
        // Route::post('save', "QuanDiemController@saveComment")->name("saveComment");
    });
});

Route::group(['prefix' => 'admin-quan-diem','namespace'=>"AdminQuanDiem"], function() {
    Route::get('login', "UserController@login")->name("AdminQuanDiem.login");
    Route::post('login', "UserController@postLogin");

    Route::group(['middleware' => 'auth'], function() {
    
    Route::post('logout', "UserController@logout")->name("AdminQuanDiem.logout");

    Route::get('profile',"UserController@profile")->name("user.profile");
    Route::post('profile',"UserController@saveProfile");

    Route::get('posts', "PostController@index")->name("AdminQuanDiem.posts");
    Route::get('posts/create', "PostController@create")->name("AdminQuanDiem.posts.create");
    Route::post('posts/create', "PostController@store");

    Route::get('posts/edit/{id}', "PostController@edit")->name("AdminQuanDiem.posts.edit");
    Route::post('posts/edit/{id}', "PostController@update");

    Route::post('posts/delete/{id}', "PostController@destroy")->name("AdminQuanDiem.posts.delete");;

    });
});

Auth::routes();
    Route::get('/logout','Auth\LoginController@logout')->name('logout');
Route::middleware('role:superadmin|admin|user')->group(function(){
    Route::get('/dashboard','HomeController@index')->name('dashboard');
    // Route::get('/logout','Auth\LoginController@logout')->name('logout');
    Route::middleware('role:superadmin|admin|user')->group(function (){
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

        Route::group(['prefix' => 'logo'], function() {
            Route::get('/', "OgProduction\LogoController@edit")->name("logo.edit");
            Route::put('update', "OgProduction\LogoController@update")->name("logo.update");
        });

        Route::group(['prefix' => 'map'], function() {
            Route::get('/', "OgProduction\MapController@edit")->name("map.edit");
            Route::put('update', "OgProduction\MapController@update")->name("map.update");
        });

        Route::group(['prefix' => 'banners'], function() {
            Route::get('/',"OgProduction\BannerController@index")->name("banners");
            Route::get('/edit/{id}',"OgProduction\BannerController@edit")->name("banners.edit");
            Route::post('/edit/{id}',"OgProduction\BannerController@update")->name("banners.update");
        });

        Route::group(['prefix' => 'admin/brokers'], function() {
            Route::get('/',"OgProduction\BrokersController@index")->name("brokers");
            Route::get('/create',"OgProduction\BrokersController@create")->name("brokers.create");
            Route::post('/create',"OgProduction\BrokersController@store");

            Route::get('/edit/{id}',"OgProduction\BrokersController@edit")->name("brokers.edit");
            Route::post('/edit/{id}',"OgProduction\BrokersController@update")->name("brokers.update");
            Route::delete('/destroy/{id}',"OgProduction\BrokersController@destroy")->name("brokers.destroy");
        });

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


