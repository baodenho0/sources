@extends('layouts.app')
@section('title','Chỉnh sửa slider')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('sliders.index') }}" class="btn btn-danger">Quay lại</a>
        </div>
        <form action="{{ route('sliders.update',$slider->id) }}" method="post" enctype='multipart/form-data'>
            <div class="form-group">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
            </div>
            <div class="form-group">
                <label for="name">Tên slider</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ $slider->name }}">
                @if($errors->has('name'))
                    <p class="text-danger">{{ $errors->first('name') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="title">Tiêu đề</label>
                <input type="text" class="form-control" name="title" id="title"  value="{{ $slider->title  }}">
                @if($errors->has('title'))
                    <p class="text-danger">{{ $errors->first('title') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="description">Mô tả</label>
                <textarea class="form-control" id="description" name="description" rows="3">{{ $slider->description }}</textarea>
                @if($errors->has('description'))
                    <p class="text-danger">{{ $errors->first('description') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="video_path">Đường dẫn video</label>
                <input type="url" class="form-control" name="video_path" id="video_path" value="http://www.youtube.com/watch?v={{ $slider->video_path }}">
            </div>
            <div class="form-group">
                <label for="image">Ảnh bìa</label>
                <input type="file" class="dropify" data-default-file="{{asset($slider->image_path)}}" name="image" id="image">
            </div>
            <div class="form-group checkbox">
                <label for="btn">
                    <input type="checkbox" id="btn" {{ ($slider->btn_name)?'checked':'' }}> Thêm nút
                </label>
                <div class="form-group mt-2 form-btn">
                    <div class="row">
                        <div class="col-sm-4">
                            <label for="btn_name">Tên nút</label>
                            <input type="text" class="form-control" name="btn_name" id="btn_name" value="{{ $slider->btn_name }}">
                        </div>
                        <div class="col-sm-4">
                            <label for="type_path">Loại đường dẫn</label>
                            <select id="type_path" class="form-control">
                                <option value="url" {{ ($slider->btn_url)?'selected':'' }}>Đường dẫn</option>
                                <option value="route" {{ ($slider->btn_url)?'':'selected' }}>Route</option>
                            </select>
                        </div>
                        <div class="col-sm-4">
                            <label for="btn_url">Đường dẫn</label>
                            <input type="text" class="form-control" name="btn_url" id="btn_url" value="{{ $slider->btn_url }}">
                        </div>
                        <div class="col-sm-4">
                            <label for="btn_route">Tên route</label>
                            <input type="text" class="form-control" name="btn_route" id="btn_route" value="{{ $slider->btn_route }}">
                        </div>
                    </div>
                </div>
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
        form.css({'display':(btn.is(':checked'))?'block':'none'});
        btn.on('change', function(){
            url.val('');
            route.val('');
            name.val('');
            ($(this).is(':checked'))?form.slideDown():form.slideUp();
        });
        (path.val() === 'route')? url.parent().hide(): route.parent().hide();
        path.on('blur change', function(){
            let type = $(this).val();
            if(type ==='url'){ url.parent().slideDown(); route.parent().hide(); route.val('') }else{ url.parent().hide(); url.val(''); route.parent().slideDown(); }
        })
    </script>

    <script type="text/javascript" src="{{ asset('assets/vendor/dropify/dist/js/dropify.min.js') }}"></script>
    <script type="text/javascript">
        $('.dropify').dropify();
    </script>
@endsection