<?php

namespace App\Http\Controllers\OgProduction;

use App\Category;
use App\Contact;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    public function index()
    {

        $contact = Contact::first();
        return view('pages.contact.index',compact('contact'));
    }
    public function create(){
        return view('pages.posts.create')->withCategories(Category::all());
    }

    public function store(Request $request)
    {
        $all = $request->only(['image','address','phone','email','map']);
        $validator = Validator::make($all,[
           
            'address'=>'required',
            'phone'=>'required',
            'email'=>'required',
            'image'=>'required|image|mimes:jpg,png,jpeg',
            'map'=>'required'
        ],[
           
            'contact_id.exists'=>'',
            'address.required'=>'',
            'phone.required'=>'',
            'email.required'=>'',
            'image.required'=>'',
            'image.image'=>'',
            'image.mimes'=>'',
            'map.required'=>'',
        ]);
        if($validator->fails()) return redirect()->back()->withErrors($validator);
        //$all['slug'] = str_slug($all['title']);
        $image = $request->file('image');
        $image_name = 'contact-'.time().'.'.$image->getClientOriginalExtension();
        $image->move(public_path('uploads/contact'),$image_name);

        $all['image_path'] = 'uploads/contact/'.$image_name;
        $all['user_id'] = Auth::user()->id;

        $post = Post::update($all);
        return redirect()->route('posts.show',$post->id)->with(['success'=>'Cập nhật Liên Hệ thành công.']);
    }

    public function show()
    {
        $contact=Contact::first();
        return view('pages.contact.index',compact('contact'));
    }
    public function edit($id)
    {
        return view('pages.posts.edit')->withPost(Post::find($id))->withCategories(Category::all());
    }


    public function update(Request $request,$id)
    {
        $all = $request->only(['image','address','phone','email','map']);
        $validator = Validator::make($all,[
            
            'address'=>'required',
            'phone'=>'required',
            'email'=>'required',
            'image'=>'image|mimes:jpg,png,jpeg',
            'map'=>'required'
        ],[

            'address.required'=>'',
            'phone.required'=>'',
            'email.required'=>'',
            'image.required'=>'',
            'image.image'=>'',
            'image.mimes'=>'',
            'map.required'=>'',
        ]);
        if($validator->fails()) return redirect()->back()->withErrors($validator);
        $contact = Contact::first();
        //$all['slug'] = str_slug($all['title']);
        $image = $request->file('image');
        if($image){
            $image_name = 'contact-'.time().'.'.$image->getClientOriginalExtension();
            $image->move(public_path('uploads/contact'),$image_name);
            $all['image_path'] = 'uploads/contact/'.$image_name;
        }
        $contact->update($all);
        return redirect()->route('contact.show',$contact->id)->with(['success'=>'Cập nhật Liên Hệ thành công.']);
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if($post)
            $post->delete();
        return redirect()->route('posts.index')->with(['success'=>'Xóa bài viết '.$post->title.' thành công']);
    }


}

