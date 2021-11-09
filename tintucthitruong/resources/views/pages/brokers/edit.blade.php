@extends('layouts.app')
@section('title','Sửa Bài Viết')
@section("customCSS")
<link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/summernote/summernote.css') }}">
@endsection
@section('content')
<div class="box box-block bg-white clearfix">
    <div class="mb-1">
        <a href="{{ route('brokers') }}" class="btn btn-danger btn-rounded">Quay lại</a>
    </div>
    <form id="myform" class="form-horizontal" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group">
            <div class="col-sm-9">
                <label for="title">Tiêu Đề:</label>
                <input type="text" class="form-control" id="title" value="{{$brokers->name ?? ""}}" name="name" placeholder="Enter title">
            </div>
            <div class="col-sm-3" style="padding-top: 25px; text-align: right;">
                <button type="submit" class="btn btn-primary"> Sửa brokers</button>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="category_id">URL:</label>
                <input type="text" class="form-control" value="{{$brokers->url ?? ""}}" name="url" placeholder="Enter URL">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="category_id">Điểm:</label>
                <input type="text" class="form-control" value="{{$brokers->score ?? 0}}" name="score" placeholder="Enter score">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="category_id">Mô tả:</label>
                <textarea class="form-control" rows="5" style="width: 100%" id="description" name="description">{{$brokers->description ?? ""}}</textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" data-default-file="{{asset($brokers->image)}}" name="image" id="image">
                <input type="hidden" id="image_hidden" name="image_hidden" value="{{$brokers->image!=null?$brokers->image:''}}">
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