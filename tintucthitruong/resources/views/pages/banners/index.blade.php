@extends('layouts.app')
@section('title','Bài Viết')
@section('customCSS')
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.carousel.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.theme.default.min.css') }}">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->
@endsection
@section('content')
<div class="box box-block bg-white">
    <div class="row">
        <div class="col-sm-8">
            <div class="mb-1">
                {{-- <a class="btn btn-success btn-rounded" href="{{url('/posts/create')}}">Thêm Bài Viết</a> --}}
            </div>
        </div>
        <div class="col-sm-4 pull-right">

        </div>
    </div>
    <table class="table table-striped table-bordered" id="users">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>URL</th>
                <th>Hình ảnh</th>
                <th>Ngày tạo</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($banners as $value)
            <tr>
                <td>{{$value->id ?? ''}}</td>
                <td>{{$value->name ?? ''}}</td>
                <td>{{$value->url ?? ''}}</td>
                <td width="60px">
                    <img style="width: 50px;height: auto" src="{{asset($value->image)}}" alt="">
                </td>
                <td>{{$value->created_at}}</td>
                <td style="text-align: center;">
                    <a href="{{ route('banners.edit',$value->id) }}" class="btn btn-warning btn-sm"><i class="ti-pencil"></i> Sửa</a>
                
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $banners->links() }}

</div>
@endsection
@section('customJS')

@endsection