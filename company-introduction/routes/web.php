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

Route::group(['prefix' => 'admin','middleware' => ['auth']], function() {
    Route::get('/', function(){
        return redirect()->route('product');
    })->name('home');

    Route::group(['prefix' => 'user'], function() {
    	Route::get('/edit-profile','UserController@get_editProfile')->name('edit_profile');
    	Route::post('/edit-profile','UserController@post_editProfile');
        Route::get('/','UserController@index')->name('user-list');
        Route::get('/edit/{id}','UserController@get_edit')->name('edit-user');
        Route::post('/edit/{id}','UserController@post_edit');
        Route::get('/add','UserController@get_add')->name('get_add_user');
        Route::post('/add','UserController@post_add');
        Route::get('/datatables_user','UserController@datatables_user')->name('datatables_user');
        Route::post('/delete','UserController@delete')->name('user_delete');
    });    




    Route::group(['prefix' => 'menu'], function() {
        Route::get('/', 'MenuItemController@get_menu');
        Route::get('/ajax_load_menu', 'MenuItemController@ajax_load_menu')->name('ajax_load_menu');
        Route::post('/ajax_update_list_menu', 'MenuItemController@ajax_update_list_menu')->name('ajax_update_list_menu');
        Route::post('/ajax_new_and_update_menu_item', 'MenuItemController@ajax_new_and_update_menu_item')->name('ajax_new_and_update_menu_item');
        Route::post('/ajax_delete_menu_item', 'MenuItemController@ajax_delete_menu_item')->name('ajax_delete_menu_item');
        Route::get('/ajax_load_menu_item', 'MenuItemController@ajax_load_menu_item')->name('ajax_load_menu_item');
    });

    Route::group(['prefix' => 'position'], function() {
        Route::get('/', 'PositionController@index')->name("position-list");
        Route::get('/permissions/{id}','PositionController@get_edit_permissions')->name('get_edit_permissions');
        Route::post('/permissions/{id}','PositionController@post_edit_permissions');
        Route::get('/add','PositionController@get_add')->name('get_add_position');
        Route::post('/add','PositionController@post_add');
        Route::get('/datatables_position','PositionController@datatables_position')->name('datatables_position');
        Route::post('/delete','PositionController@delete')->name('position_delete');
        Route::post('/ajax_update_status_permissions','PositionController@ajax_update_status_permissions')->name('ajax_update_status_permissions');
        Route::post('/set-permission','PositionController@setPermission')->name('set-permission');
        Route::post('/change-position-name','PositionController@changePositionName')->name('change-position-name');
    });

    Route::group(['prefix' => 'products'], function() {
        Route::get('/','ProductController@index')->name('product');
        Route::get('/edit','ProductController@get_edit')->name('edit-product');
        Route::post('/edit','ProductController@post_edit')->name('postEditProduct');
        Route::get('/add','ProductController@get_add')->name('get_add_product');
        Route::post('/add','ProductController@post_add');
        Route::get('/datatables','ProductController@datatables')->name('datatables_product');
        Route::post('/delete','ProductController@delete')->name('product_delete');
        Route::get('/check-active-home-page', 'ProductController@checkHomePage')->name('checkHomePage');
        Route::get('/check-trending-product', 'ProductController@checkTrendingProduct')->name('checkTrendingProduct');
        Route::get('/check-best-seller', 'ProductController@checkBestSeller')->name('checkBestSeller');

    });

    Route::group(['prefix' => 'category'], function() {
        Route::get('/','CategoryController@index')->name('category');
        Route::get('/edit/{id}','CategoryController@get_edit')->name('edit-category');
        Route::post('/edit/{id}','CategoryController@post_edit');
        Route::get('/add','CategoryController@get_add')->name('get_add_category');
        Route::post('/add','CategoryController@post_add');
        Route::get('/datatables','CategoryController@datatables')->name('datatables_category');
        Route::post('/delete','CategoryController@delete')->name('category_delete');
    });

    Route::group(['prefix' => 'setup-page'], function() {
        Route::get('/banner','SetupPageController@getBanner')->name('getBanner');
        Route::post('/banner','SetupPageController@postBanner');

        Route::get('/content-banner','SetupPageController@getContentBanner')->name('getContentBanner');
        Route::post('/content-banner','SetupPageController@postContentBanner');

        Route::get('/contact','SetupPageController@getContact')->name('getContact');
        Route::post('/contact','SetupPageController@postContact');

        Route::get('/about','SetupPageController@getAbout')->name('getAbout');
        Route::post('/about','SetupPageController@postAbout');

        Route::get('/customer','SetupPageController@getCustomer')->name('getCustomer');
        Route::post('/customer','SetupPageController@postCustomer');

        Route::get('/logo','SetupPageController@getLogo')->name('getLogo');
        Route::post('/logo','SetupPageController@postLogo');

        Route::get('/category-banner','SetupPageController@getCategoryBanner')->name('getCategoryBanner');
        Route::post('/category-banner','SetupPageController@postCategoryBanner');

        Route::get('/contact-banner','SetupPageController@getContactBanner')->name('getContactBanner');
        Route::post('/contact-banner','SetupPageController@postContactBanner');

        Route::get('/about-banner','SetupPageController@getAboutBanner')->name('getAboutBanner');
        Route::post('/about-banner','SetupPageController@postAboutBanner');

        Route::get('/customer-banner','SetupPageController@getCustomerBanner')->name('getCustomerBanner');
        Route::post('/customer-banner','SetupPageController@postCustomerBanner');

        Route::get('/detail-banner','SetupPageController@getDetailBanner')->name('getDetailBanner');
        Route::post('/detail-banner','SetupPageController@postDetailBanner');
    });

    Route::group(['prefix' => 'title'], function() {
        Route::get('/home', 'TitleController@getHome');
        Route::post('/home', 'TitleController@postHome');

        Route::get('/category', 'TitleController@getCategory');
        Route::post('/category', 'TitleController@postCategory');

        Route::get('/detail', 'TitleController@getDetail');
        Route::post('/detail', 'TitleController@postDetail');

        Route::get('/about', 'TitleController@getAbout');
        Route::post('/about', 'TitleController@postAbout');

        Route::get('/customer', 'TitleController@getCustomer');
        Route::post('/customer', 'TitleController@postCustomer');

        Route::get('/contact', 'TitleController@getContact');
        Route::post('/contact', 'TitleController@postContact');
    });

}); 

Auth::routes();

    /**
     * Guest 
     */
    Route::get('/', 'GuestController@index')->name('guest.home');
    Route::get('/product/{slug}', 'GuestController@detail')->name('guest.detail');
    Route::get('/category', 'GuestController@category')->name('guest.category');
    Route::get('/contact', 'GuestController@contact')->name('guest.contact');
    Route::get('/about', 'GuestController@about')->name('guest.about');
    Route::get('/customer', 'GuestController@customer')->name('guest.customer');
    Route::get('/category/pagination', 'GuestController@fetchPagination')->name('fetchPagination');
    

