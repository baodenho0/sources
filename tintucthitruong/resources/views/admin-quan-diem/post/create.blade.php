@extends('admin-quan-diem.layouts.app')
@section('title','Thêm Bài Viết')
@section("style")
<link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/summernote/summernote.css') }}">
@endsection
@section('content')
<div class="box box-block bg-white clearfix">
    <form id="myform" class="form-horizontal" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="row">
            <div class="col-sm-1" style="padding-top: 25px;padding-left: 20px; ">
                <label for="status"></label>
                <a href="{{ route('AdminQuanDiem.posts') }}" class="btn btn-danger">Trở lại</a>
            </div>
            <div class="col-sm-3" style="padding-top: 25px;">
                <label for="status"></label>
                <button type="submit" class="btn btn-primary"> Tạo Bài Viết</button>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="title">Tiêu Đề:</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Enter title">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="category_id">Danh Mục:</label>
                <select class="form-control" name="category_id">
                    @foreach($categories as $category)
                    <option value="{{$category->id}}">{{$category->title}}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-5">
                <label for="description">Giới thiệu ngắn:</label>
                <textarea class="form-control" rows="5" style="width: 100%" id="description" name="description"></textarea>
                {{-- <label for="status">Trạng thái:</label> --}}
            </div>
            <div class="col-sm-7">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" name="image" id="image">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <label for="body-summernote">Nội Dung:</label>
                <textarea id="body-summernote" name="body"></textarea>
            </div>
        </div>
        <input type="hidden" name="post_id" id="post_id">
    </form>
</div>
@endsection
@section("script")
<script type="text/javascript" src="{{ asset('assets/vendor/dropify/dist/js/dropify.min.js') }}"></script>
<script type="text/javascript">
$('.dropify').dropify();
</script>
<script type="text/javascript" src="{{asset('assets/vendor/summernote/summernote.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/js/forms-editors.js')}}"></script>
<script type="text/javascript">
token = '{{csrf_token()}}';

function SaveDraft() {
    $("#issavedraft").val("true");
    $("#myform").submit();
}
</script>
@endsection