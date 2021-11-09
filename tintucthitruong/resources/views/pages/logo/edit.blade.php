@extends('layouts.app')
@section('title','Chỉnh sửa logo')
@section('customCSS')
<link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection
@section('content')
<div class="box box-block bg-white clearfix">
    <form method="post" action="{{ route('logo.update') }}" enctype='multipart/form-data'>
        <div class="form-group">
            {{ csrf_field() }}
            {{ method_field('PUT') }}
        </div>
        <div class="form-group">
            <label for="name">Tên logo</label>
            <input type="text" class="form-control" name="name" id="name" value="{{ $logo->name ?? "" }}">
        </div>
        <div class="form-group">
            <label for="image">Ảnh</label>
            <input type="file" class="dropify" data-default-file="{{asset($logo->image ?? "")}}" name="image" id="image">
        </div>
        <div class="form-group pull-right">
            <button type="submit" class="btn btn-warning">Cập nhật</button>
        </div>
    </form>
</div>
@endsection
@section('customJS')
<script type="text/javascript">
let btn = $('#btn');
let path = $('#type_path');
let url = $('#btn_url');
let route = $('#btn_route');
let name = $('#btn_name');
let form = $('.form-btn');
form.css({ 'display': (btn.is(':checked')) ? 'block' : 'none' });
btn.on('change', function() {
    url.val('');
    route.val('');
    name.val('');
    ($(this).is(':checked')) ? form.slideDown(): form.slideUp();
});
(path.val() === 'route') ? url.parent().hide(): route.parent().hide();
path.on('blur change', function() {
    let type = $(this).val();
    if (type === 'url') {
        url.parent().slideDown();
        route.parent().hide();
        route.val('')
    } else {
        url.parent().hide();
        url.val('');
        route.parent().slideDown();
    }
})
</script>
<script type="text/javascript" src="{{ asset('assets/vendor/dropify/dist/js/dropify.min.js') }}"></script>
<script type="text/javascript">
$('.dropify').dropify();
</script>
@endsection