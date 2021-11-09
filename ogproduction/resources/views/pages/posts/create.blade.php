@extends('layouts.app')
@section('title','Thêm Bài Viết')

@section("customCSS")
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/summernote/summernote.css') }}">

@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('posts.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form id="myform" class="form-horizontal" action="/posts" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="form-group">
                <div class="col-sm-9">
                    <label for="title">Tiêu Đề:</label>

                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter title">

                </div>
                <div class="col-sm-3" style="padding-top: 25px; text-align: right;">
                    <label for="status"></label>
                    <button type="submit" class="btn btn-primary"> Tạo Bài Viết</button>
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
                            <option value="{{$category->id}}">{{$category->title}}</option>
                        @endforeach
                    </select>

                    <label for="description">Giới thiệu ngắn:</label>

                    <textarea class="form-control" rows="5" style="width: 100%" id="description"
                              name="description"></textarea>
                    <label for="status">Trạng thái:</label>
                    <?php if($oSelect->id != 3 ){ ?>
                    <select class="form-control" name="status">
                        <option value="0">Hiển thị</option>
                        <option value="1">Không hiển thị</option>
                        <option value="2">Chờ Duyệt</option>
                    </select>
                    <?php  } ?>
                    <?php if($oSelect->id == 3 ){ ?>
                    <select class="form-control" name="status">
                        <option value="2">Chờ Duyệt</option>
                    </select>
                    <?php  } ?>
                </div>
                <div class="col-sm-7">
                    <label for="image">Hình ảnh</label>
                    <input type="file" class="dropify" name="image" id="image">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12">
                    <label for="body-summernote">Nội Dung:</label>

                    <textarea  id="body-summernote" name="body" ></textarea >

                </div>
            </div>
            <input type="hidden" name="post_id" id="post_id">
        </form>
    </div>
@endsection



@section("customJS")

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

