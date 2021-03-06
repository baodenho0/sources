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

Route::get('home', function() {
    //
})->name("home");

Route::get('admin/login', 'UserController@showLogin')->name('login');
Route::post('admin/login', 'UserController@login')->name('postLogin');

Route::group(['prefix' => 'admin','middleware' => ['auth']], function() {
    Route::get('admin/logout', 'UserController@logout')->name('logout');

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

    // Route::group(['prefix' => 'setup-page'], function() {
    //     Route::get('/banner','SetupPageController@getBanner')->name('getBanner');
    //     Route::post('/banner','SetupPageController@postBanner');

    //     Route::get('/content-banner','SetupPageController@getContentBanner')->name('getContentBanner');
    //     Route::post('/content-banner','SetupPageController@postContentBanner');

    //     Route::get('/contact','SetupPageController@getContact')->name('getContact');
    //     Route::post('/contact','SetupPageController@postContact');

    //     Route::get('/about','SetupPageController@getAbout')->name('getAbout');
    //     Route::post('/about','SetupPageController@postAbout');

    //     Route::get('/customer','SetupPageController@getCustomer')->name('getCustomer');
    //     Route::post('/customer','SetupPageController@postCustomer');

         Route::get('/logo','SetupPageController@getLogo')->name('getLogo');
         Route::post('/logo','SetupPageController@postLogo');

    //     Route::get('/category-banner','SetupPageController@getCategoryBanner')->name('getCategoryBanner');
    //     Route::post('/category-banner','SetupPageController@postCategoryBanner');

    //     Route::get('/contact-banner','SetupPageController@getContactBanner')->name('getContactBanner');
    //     Route::post('/contact-banner','SetupPageController@postContactBanner');

    //     Route::get('/about-banner','SetupPageController@getAboutBanner')->name('getAboutBanner');
    //     Route::post('/about-banner','SetupPageController@postAboutBanner');

    //     Route::get('/customer-banner','SetupPageController@getCustomerBanner')->name('getCustomerBanner');
    //     Route::post('/customer-banner','SetupPageController@postCustomerBanner');

    //     Route::get('/detail-banner','SetupPageController@getDetailBanner')->name('getDetailBanner');
    //     Route::post('/detail-banner','SetupPageController@postDetailBanner');
    // });

    Route::group(['prefix' => 'title'], function() {
        Route::get('/edit/{id}', 'TitleController@getEdit');
        Route::post('/edit/{id}', 'TitleController@postEdit');        
    });

    Route::group(['prefix' => 'banner'], function() {
        Route::get('/edit/{id}', 'BannerController@getEdit');
        Route::post('/edit/{id}', 'BannerController@postEdit');        
    });



    Route::group(['prefix' => 'home-services'], function() {
        Route::get('/','HomeServiceController@index')->name('homeServices');
        Route::get('/edit','HomeServiceController@getEdit')->name('homeServices.edit');
        Route::post('/edit','HomeServiceController@postEdit')->name('homeServices.postEdit');;
        Route::get('/add','HomeServiceController@getAdd')->name('homeServices.add');
        Route::post('/add','HomeServiceController@postAdd');
        Route::get('/datatables','HomeServiceController@datatable')->name('homeServices.datatable');
        Route::post('/delete','HomeServiceController@delete')->name('homeServices.delete');
    });


    Route::group(['prefix' => 'slides'], function() {
        Route::get('/','SlideController@index')->name('slide');
        Route::get('/edit','SlideController@getEdit')->name('slide.edit');
        Route::post('/edit','SlideController@postEdit')->name('slide.postEdit');
        Route::get('/add','SlideController@getAdd')->name('slide.add');
        Route::post('/add','SlideController@postAdd');
        Route::get('/datatables','SlideController@datatable')->name('slide.datatables');
        Route::post('/delete','SlideController@delete')->name('slide.delete');
       
    });


    Route::group(['prefix' => 'slide-title'], function() {
       Route::get('/','SlideTitleController@index')->name('slideTitle');
       Route::get('/edit','SlideTitleController@getEdit')->name('slideTitle.edit');
       Route::post('/edit','SlideTitleController@postEdit')->name('slideTitle.postEdit');
       Route::get('/add','SlideTitleController@getAdd')->name('slideTitle.add');
       Route::post('/add','SlideTitleController@postAdd')->name('slideTitle.postAdd');
       Route::post('/delete','SlideTitleController@delete')->name('slideTitle.delete');
       Route::get('/datatables','SlideTitleController@datatable')->name('slideTitle.datatables');
    });

    Route::group(['prefix' => 'our-team'], function() {
        Route::get('/','OurTeamController@index')->name('ourTeam');
        Route::get('/edit','OurTeamController@getEdit')->name('ourTeam.edit');
        Route::post('/edit','OurTeamController@postEdit')->name('ourTeam.postEdit');;
        Route::get('/add','OurTeamController@getAdd')->name('ourTeam.add');
        Route::post('/add','OurTeamController@postAdd');
        Route::get('/datatables','OurTeamController@datatable')->name('ourTeam.datatable');
        Route::post('/delete','OurTeamController@delete')->name('ourTeam.delete');
    });

    Route::group(['prefix' =>'contact'], function() {
        Route::get('/edit','ContactController@getEdit')->name('contact.edit');
        Route::post('/edit','ContactController@postEdit');
    });

    Route::group(['prefix' => 'posts'], function() {
        Route::get('/','PostController@index')->name('posts');
        Route::get('/edit','PostController@getEdit')->name('posts.edit');
        Route::post('/edit','PostController@postEdit')->name('posts.postEdit');;
        Route::get('/add','PostController@getAdd')->name('posts.add');
        Route::post('/add','PostController@postAdd');
        Route::get('/datatables','PostController@datatable')->name('posts.datatable');
        Route::post('/delete','PostController@delete')->name('posts.delete');
    });

    Route::group(['prefix' => 'post-types'], function() {
        Route::get('/','PostTypeController@index')->name('postTypes');
        Route::get('/edit','PostTypeController@getEdit')->name('postTypes.edit');
        Route::post('/edit','PostTypeController@postEdit')->name('postTypes.postEdit');;
        Route::get('/add','PostTypeController@getAdd')->name('postTypes.add');
        Route::post('/add','PostTypeController@postAdd');
        Route::get('/datatables','PostTypeController@datatable')->name('postTypes.datatable');
        Route::post('/delete','PostTypeController@delete')->name('postTypes.delete');
    });

    Route::group(['prefix' => 'services'], function() {
        Route::get('/','ServiceController@index')->name('services');
        Route::get('/edit','ServiceController@getEdit')->name('services.edit');
        Route::post('/edit','ServiceController@postEdit')->name('services.postEdit');;
        Route::get('/add','ServiceController@getAdd')->name('services.add');
        Route::post('/add','ServiceController@postAdd');
        Route::get('/datatables','ServiceController@datatable')->name('services.datatable');
        Route::post('/delete','ServiceController@delete')->name('services.delete');
    });

    Route::group(['prefix' => 'service-types'], function() {
        Route::get('/','ServiceTypeController@index')->name('serviceTypes');
        Route::get('/edit','ServiceTypeController@getEdit')->name('serviceTypes.edit');
        Route::post('/edit','ServiceTypeController@postEdit')->name('serviceTypes.postEdit');;
        Route::get('/add','ServiceTypeController@getAdd')->name('serviceTypes.add');
        Route::post('/add','ServiceTypeController@postAdd');
        Route::get('/datatables','ServiceTypeController@datatable')->name('serviceTypes.datatable');
        Route::post('/delete','ServiceTypeController@delete')->name('serviceTypes.delete');
    });

    Route::group(['prefix' => 'questionanswer'], function() {
        Route::get('/','QuestionAnswerController@index')->name('questionanswer');
        Route::get('/edit','QuestionAnswerController@getEdit')->name('questionanswer.edit');
        Route::post('/edit','QuestionAnswerController@postEdit')->name('questionanswer.postEdit');;
        Route::get('/add','QuestionAnswerController@getAdd')->name('questionanswer.add');
        Route::post('/add','QuestionAnswerController@postAdd');
        Route::get('/datatables','QuestionAnswerController@datatable')->name('questionanswer.datatable');
        Route::post('/delete','QuestionAnswerController@delete')->name('questionanswer.delete');
    });

    Route::group(['prefix' =>'finacing'], function() {
        Route::get('/edit','FinacingController@getEdit')->name('finacing.edit');
        Route::post('/edit','FinacingController@postEdit');
    });

    Route::group(['prefix' => 'special'], function() {
        Route::get('/','SpecialController@index')->name('special');
        Route::get('/edit','SpecialController@getEdit')->name('special.edit');
        Route::post('/edit','SpecialController@postEdit')->name('special.postEdit');;
        Route::get('/add','SpecialController@getAdd')->name('special.add');
        Route::post('/add','SpecialController@postAdd');
        Route::get('/datatables','SpecialController@datatable')->name('special.datatable');
        Route::post('/delete','SpecialController@delete')->name('special.delete');
    });

    Route::group(['prefix' => 'special-form'], function() {
        Route::get('/','SpecialFormController@index')->name('special-form');       
        Route::get('/datatables','SpecialFormController@datatable')->name('special-form.datatable');
    });

}); 


    /**
     * website 
     */
    Route::group(['namespace' => 'Website'], function() {
        Route::get('/', "HomeController@index")->name('website.home');

        Route::get('blog/get-post','BlogController@getPostByPage')->name('blog.getPostByPage');
        Route::get('blog/{slug}','BlogController@getBySlug')->name('blog.getBySlug');

        Route::get('services','ServiceController@index')->name('website.services');
        Route::get('questionanswer','QuestionAnswerController@index')->name('website.questionanswer');

        Route::get('contact','ContactController@index')->name('website.contact');

        Route::get('questionanswer','QuestionAnswerController@index')->name('website.questionanswer');

        Route::get('shop/{slug}','ShopController@index')->name('website.shop');
        Route::get('product/{slug}','ShopController@detail')->name('website.product');

        Route::get('finacing','FinacingController@index')->name('website.finacing');

        Route::get('special','SpecialController@index')->name('website.special');
        Route::get('special/get','SpecialController@getPostByPage')->name('website.special.getPostByPage');
        Route::post('special/post-form','SpecialController@postForm')->name('website.special.postForm');

    });
    

