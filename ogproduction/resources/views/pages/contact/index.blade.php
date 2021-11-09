@extends('layouts.app')
@section('title','Chỉnh sửa Liên Hệ')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <form action="{{ route('contact.update',$contact->id) }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
            </div>
             <div class="form-group" style="width: 600px">
                <label for="image">Hình ảnh</label>
                <input type="file" class="dropify" name="image" id="image" data-default-file="{{ asset($contact->image_path)  }}">
            </div>
            <div class="form-group">
                <label for="address">Địa Chỉ</label>
                <input type="text" class="form-control" name="address" id="address"  value="{{ $contact->address }}">
                @if($errors->has('address'))
                    <p class="text-danger">{{ $errors->first('address') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="phone">Điện Thoại</label>
                <input type="text" class="form-control" name="phone" id="phone"  value="{{ $contact->phone }}">
                @if($errors->has('phone'))
                    <p class="text-danger">{{ $errors->first('phone') }}</p>
                @endif
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email"  value="{{ $contact->email }}">
                @if($errors->has('email'))
                    <p class="text-danger">{{ $errors->first('email') }}</p>
                @endif
            </div>
           
            <div class="form-group">
                <label for="map">Bản Đồ</label>
                <input type="text" class="form-control" name="map" id="map" value="{{ $contact->map }}">
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