@extends('layouts.app')
@section('title','Thêm mới slider')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('sliders.store') }}" method="post" enctype='multipart/form-data'>
            <div class="form-group">
                {{ csrf_field() }}
            </div>
            <div class="form-group">
                <label for="name">Tên slider</label>
                <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                @if($errors->has('name'))
                    <p class="text-danger">{{ $errors->first('name') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="title">Tiêu đề</label>
                <input type="text" class="form-control" name="title" id="title"  value="{{ old('title') }}">
                @if($errors->has('title'))
                    <p class="text-danger">{{ $errors->first('title') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="description">Mô tả</label>
                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                @if($errors->has('description'))
                    <p class="text-danger">{{ $errors->first('description') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="video_path">Đường dẫn video</label>
                <input type="url" class="form-control" name="video_path" id="video_path">
            </div>
            <div class="form-group">
                <label for="image">Ảnh bìa</label>
                <input type="file" class="dropify" name="image" id="image">
            </div>
            <div class="form-group checkbox">
                <label for="btn">
                    <input type="checkbox" id="btn"> Thêm nút
                </label>
                <div class="form-group mt-2 form-btn">
                    <div class="row">
                        <div class="col-sm-4">
                            <label for="btn_name">Tên nút</label>
                            <input type="text" class="form-control" name="btn_name" id="btn_name">
                        </div>
                        <div class="col-sm-4">
                            <label for="type_path">Loại đường dẫn</label>
                            <select id="type_path" class="form-control">
                                <option value="url">Đường dẫn</option>
                                <option value="route">Route</option>
                            </select>
                        </div>
                        <div class="col-sm-4">
                            <label for="btn_url">Đường dẫn</label>
                            <input type="text" class="form-control" name="btn_url" id="btn_url">
                        </div>
                        <div class="col-sm-4">
                            <label for="btn_route">Tên route</label>
                            <input type="text" class="form-control" name="btn_route" id="btn_route">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group pull-right">
                <button type="submit" class="btn btn-success">Thêm</button>
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
        $('.form-btn').css({'display':(btn.is(':checked'))?'block':'none'});
        btn.on('change', function(){
            let form = $('.form-btn').slideDown();
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