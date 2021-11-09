@extends('layouts.app')
@section('title','Chỉnh sửa video')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('portfolios.update',$portfolio->id) }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
            </div>
            <div class="form-group">
                <label for="title">Tiêu đề</label>
                <input type="text" class="form-control" name="title" id="title"  value="{{ $portfolio->title }}">
                @if($errors->has('title'))
                    <p class="text-danger">{{ $errors->first('title') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" name="image" id="image" data-default-file="{{ asset($portfolio->image_path)  }}">
            </div>
            <div class="form-group">
                <label for="size">Kích thước ảnh</label>
                <select name="size" id="size" class="form-control">
                    <option value="" {{ (!$portfolio->size)?'selected':'' }}>Default</option>
                    <option value="double_size" {{ (!$portfolio->size)?'':'selected' }}>Double Size</option>
                </select>
            </div>
            <div class="form-group">
                <label for="video_path">Code video</label>
                <input type="text" class="form-control" name="video_path" id="video_path" value="{{ $portfolio->video_path }}">
            </div>
            <div class="form-group pull-right">
                <button type="submit" class="btn btn-warning">Cập nhật</button>
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