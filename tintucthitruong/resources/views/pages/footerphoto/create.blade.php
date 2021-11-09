@extends('layouts.app')
@section('title','Thêm mới Ảnh Cuối Trang')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('footerphoto.store') }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {{ csrf_field() }}
            </div>
            <div class="form-group">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" name="image" id="image">
            </div>
            <div class="form-group pull-right">
                <button type="submit" class="btn btn-success">Thêm</button>
            </div>
        </form>
    </div>
@endsection

@section('customJS')
    <script type="text/javascript" src="{{ asset('assets/vendor/dropify/dist/js/dropify.min.js') }}"></script>
    <script type="text/javascript">
        $('.dropify').dropify();
    </script>
@endsection