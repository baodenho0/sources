@extends('layouts.app')
@section('title','Thêm mới bộ sưu tập')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('galleries.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('galleries.images.store',$gallery->id) }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {{ csrf_field() }}
            </div>
            <div class="form-group">
                <label for="image">Hình ảnh</label>
                <input type="file" class="form-control dropify" name="image" id="image">
            </div>
            <div class="form-group">
                <label for="">Thứ tự</label>
                <input type="number" class="form-control" value="0" name="index_id" id="index_id">
                @if($errors->has('index_id'))
                    <p class="text-danger">{{ $errors->first('index_id') }}</p>
                @endif
            </div>

            <div class="form-group pull-right">
                <button type="submit" class="btn btn-success btn-rounded">Thêm</button>
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