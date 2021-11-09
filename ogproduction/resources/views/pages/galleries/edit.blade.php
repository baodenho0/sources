@extends('layouts.app')
@section('title','Chỉnh sửa bộ sưu tập')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white">
        <div class="mb-1">
            <a href="{{ route('galleries.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('galleries.update',$gallery->id) }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
            </div>
           
            <div class="form-group">
                <label for="">Thể loại ảnh</label>
                <select class="form-control" id="gallery_type_id" name="gallery_type_id" onchange="changeGallType()">
                    <option value="">Chọn thể loại</option>
                    @foreach($gallery_types as $gallery_type)
                        @if($gallery_type->id == $gallery->gallery_type_id )
                            <option selected value="{{ $gallery_type->id }}">{{ $gallery_type->name }}</option>
                        @else
                            <option value="{{ $gallery_type->id }}">{{ $gallery_type->name }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="">Tên bộ sưu tập</label>
                <input type="text" class="form-control" data-default-file="{{ $gallery->title }}" value="{{ $gallery->title }}" name="title">
                @if($errors->has('title'))
                    <p class="text-danger">{{ $errors->first('title') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="">Thứ tự</label>
                <input type="number" class="form-control" data-default-file="{{ $gallery->index_id }}" value="{{ $gallery->index_id }}" name="index_id">
                @if($errors->has('index_id'))
                    <p class="text-danger">{{ $errors->first('index_id') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="">Hiện trang chủ</label>
                <select class="form-control" id="show_home" name="show_home" >
                    @if($gallery->show_home == 1 )
                        <option selected value="1">Hiển thị</option>
                        <option value="0">Ẩn</option>
                    @else
                        <option value="1">Hiển thị</option>
                        <option selected value="0">Ẩn</option>
                    @endif
                </select>
            </div>
            <div class="form-group">
                <label for="image">Ảnh bìa</label>
                <input type="file" class="dropify" data-default-file="{{ asset($gallery->image_path)  }}" name="image" id="image">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success btn-rounded">Sửa bộ sưu tập</button>
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