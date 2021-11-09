@extends('layouts.app')
@section('title','Sliders')

@section('customCSS')

@endsection

@section('content')
    <div class="box box-block bg-white">
        <div class="mb-1">
            <a href="{{ route('sliders.create') }}" class="btn btn-success">Thêm sliders</a>
        </div>
        <table class="table table-striped table-bordered" id="users">
            <thead>
            <tr>
                <th>#</th>
                <th>Tên</th>
                <th>Tiêu đề</th>
                <th>Hình</th>
                <th>Ngày thêm</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($sliders as $slider)
                <tr>
                    <td>{{  $slider->id }}</td>
                    <td>{{  $slider->name }}</td>
                    <td>{{  $slider->title }}</td>
                    <td><img style="width: 80px;height: auto" src="{{asset($slider->image_path)}}" alt=""></td>
                    <td>{{  $slider->created_at->format('d-m-Y H:i') }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="{{ route('sliders.show', $slider->id) }}"> <i class="ti-eye"></i> Xem</a>
                        <a class="btn btn-warning btn-sm" href="{{ route('sliders.edit', $slider->id) }}"> <i class="ti-pencil"></i> Sửa</a>
                        <a class="btn btn-danger btn-sm" href=""> <i class="ti-trash"></i> Xóa</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection

@section('customJS')

@endsection