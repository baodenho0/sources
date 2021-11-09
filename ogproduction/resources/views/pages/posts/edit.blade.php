@extends('layouts.app')
@section('title','Sửa Bài Viết')
@section("customCSS")
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/summernote/summernote.css') }}">
@endsection

@section('content')

    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('posts.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form id="myform" class="form-horizontal" action="/posts/{{$post->id}}" method="post"
              enctype="multipart/form-data">
            {{ csrf_field() }}
            {{ method_field('PUT') }}

            <div class="form-group">
                <div class="col-sm-9">
                    <label for="title">Tiêu Đề:</label>

                    <input type="text" class="form-control" id="title" value="{{$post->title}}" name="title"
                           placeholder="Enter title">

                </div>
                <div class="col-sm-3" style="padding-top: 25px; text-align: right;">

                    <button type="submit" class="btn btn-primary"> Sửa Bài Viết</button>
                </div>
                <div class="col-sm-3" style="padding-top: 25px; text-align: right;">
                    <label for="status"></label>
                    <input type="hidden" name="issavedraft" id="issavedraft">
                    <button id="savedraft" type="button" class="btn btn-primary" onclick="SaveDraft()"> Lưu Bài Viết
                        Ngay
                    </button>
                </div>
            </div>

            <div class="form-group">

                <div class="col-sm-5">
                    <label for="category_id">Danh Mục:</label>
                    <select class="form-control" name="category_id">
                        @foreach($categories as $category)
                            <option value="{{$category->id}}" {{$category->id==$post->category_id?"selected":""}}>{{$category->title}}</option>
                        @endforeach
                    </select>

                    <label for="description">Giới thiệu ngắn:</label>

                    <textarea class="form-control" rows="5" style="width: 100%" id="description"
                              name="description">{{$post->description}}</textarea>
                    <label for="status">Trạng thái:</label>
                    @if($oSelect->id!=3)
                        <select class="form-control" name="status">
                            <option value="0" {{$post->status==0?"selected":""}}>Hiển thị</option>
                            <option value="1" {{$post->status==1?"selected":""}}>Không hiển thị</option>
                            <option value="2" {{$post->status==2?"selected":""}}>Chờ duyệt</option>
                        </select>
                    @endif
                    @if($oSelect->id==3)
                        <select class="form-control" name="status">
                            <option value="2" {{$post->status==2?"selected":""}}>Chờ duyệt</option>
                        </select>
                    @endif
                </div>
                <div class="col-sm-7">
                    <label for="image">Hình ảnh</label>
                    <input type="file" class="dropify" data-default-file="{{asset($post->image_path)}}" name="image"
                           id="image">
                    <input type="hidden" id="image_hidden" name="image_hidden"
                           value="{{$post->image_path!=null?$post->image_path:''}}">
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-12">
                    <label for="body">Nội Dung:</label>
                    <textarea rows="30" cols="100" id="body-summernote" name="body">{{$post->body}}</textarea>
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
    <script type="text/javascript">
        token = '{{csrf_token()}}';

        function SaveDraft() {
            $("#issavedraft").val("true");
            $("#myform").submit();
        }
    </script>
    <script type="text/javascript" src="{{asset('assets/vendor/summernote/summernote.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/js/forms-editors.js')}}"></script>
@endsection