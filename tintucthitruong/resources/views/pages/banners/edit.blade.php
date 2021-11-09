@extends('layouts.app')
@section('title','Sửa Bài Viết')
@section("customCSS")
<link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/summernote/summernote.css') }}">
@endsection
@section('content')
<div class="box box-block bg-white clearfix">
    <div class="mb-1">
        <a href="{{ route('banners') }}" class="btn btn-danger btn-rounded">Quay lại</a>
    </div>
    <form id="myform" class="form-horizontal" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
            <div class="col-sm-9">
                <label for="title">Tiêu Đề:</label>
                <input type="text" class="form-control" id="title" value="{{$banner->name ?? ""}}" name="name" placeholder="Enter title">
            </div>
            <div class="col-sm-3" style="padding-top: 25px; text-align: right;">
                <button type="submit" class="btn btn-primary"> Sửa Banner</button>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="category_id">URL:</label>
                <input type="text" class="form-control" value="{{$banner->url ?? ""}}" name="url" placeholder="Enter URL">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" data-default-file="{{asset($banner->image)}}" name="image" id="image">
                <input type="hidden" id="image_hidden" name="image_hidden" value="{{$banner->image!=null?$banner->image:''}}">
            </div>
        </div>
    </form>
</div>
@endsection
@section("customJS")
<script type="text/javascript" src="{{ asset('assets/vendor/dropify/dist/js/dropify.min.js') }}"></script>
<script type="text/javascript">
$('.dropify').dropify();
</script>
<script type="text/javascript" src="{{asset('assets/vendor/summernote/summernote.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/js/forms-editors.js')}}"></script>
@endsection