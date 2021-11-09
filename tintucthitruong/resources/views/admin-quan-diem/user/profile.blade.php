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
            <div class="col-sm-3" style="padding-top: 25px;padding-left: 20px; ">
                <label for="status"></label>
                <button type="submit" class="btn btn-primary"> Cập nhật Thông tin</button>
            </div>
            <div class="col-sm-3" style="padding-top: 25px;">
                <label for="status"></label>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="title">Họ tên:</label>
                <input type="text" class="form-control" name="name" placeholder="Enter name" value="{{$user->name ?? ""}}">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="title">Ngày sinh:</label>
                <input type="date" class="form-control" name="date_of_birth" value="{{$user->date_of_birth ?? ""}}">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" data-default-file="{{asset($user->image)}}" name="image" id="image">
                <input type="hidden" id="image_hidden" name="image_hidden" value="{{$user->image!=null?$user->image:''}}">
            </div>
        </div>
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