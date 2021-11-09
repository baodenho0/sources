<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Banner;
use App\Contact;
use App\About;
use App\Title;

class GuestController extends Controller
{
    public function index(){
        $data['banner'] = Banner::find(1);
        $data['contentBanner'] = Banner::find(2);
        $data['slide'] = Product::where('status',1)->where('check_home_page',1)->get();
        $data['trending'] = Product::where('status',1)->where('check_trending',1)->get();
        $data['bestSeller'] = Product::where('status',1)->where('best_seller',1)->get();
        $data['title'] = Title::find(1)->title;
    	return view('guest.home.index',$data);
    }

    public function category(){
        $data['category'] = Category::select('id','name')
                                    ->where('status',1)
                                    ->get();
        $data['banner'] = Banner::find(3);
        $data['product'] = $this->queryProductPagition();
        $data['title'] = Title::find(2)->title;
                                    
    	return view('guest.category.index',$data);
    }

    public function contact(){
        $data['banner'] = Banner::find(4);
        $data['contact'] = Contact::first();
        $data['title'] = Title::find(5)->title;
    	return view('guest.contact.index',$data);
    }

    public function about(){
        $data['banner'] = Banner::find(5);
        $data['about'] = About::first();
        $data['title'] = Title::find(3)->title;
    	return view('guest.about.index',$data);
    }

    public function customer(){
        $data['banner'] = Banner::find(6);
        $data['about'] = About::find(2);
        $data['title'] = Title::find(4)->title;
        return view('guest.customer.index',$data);
    }

    public function detail($slug){
        $data['banner'] = Banner::find(7);
        $data['product'] = Product::select('product.*','category.name as category')
                            ->where('slug',$slug)
                            ->join('category','category.id','product_category_id')
                            ->where('product.status',1)->first();
                            
        if(!$data['product']){
            return abort(404);
        }
        $data['title'] = Title::find(6)->title;
        return view('guest.detail.index',$data);
    }

    public function fetchPagination(Request $request){
        if($request->ajax()){
            $data['product'] = $this->queryProductPagition($request->category);
            return view('guest.category.list_product',$data);
        }
    }

    private function queryProductPagition($categoryId = ''){
        // dd($categoryId );
        if($categoryId != ''){
            $product = Product::where('status',1)->where('product_category_id',$categoryId)->paginate(9);
        } else {
            $product = Product::where('status',1)->paginate(9);
        }

        return $product;
    }
}
