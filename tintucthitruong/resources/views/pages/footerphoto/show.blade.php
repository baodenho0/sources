@extends('layouts.app')
@section('title','Xem Ảnh Cuối Trang ')

@section('customCSS')

@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('footerphoto.index') }}" class="btn btn-primary btn-rounded">Quay lại</a>
        </div>
        <div class="table-responsive">
            <table class="table table-hover">
                <tbody>
                     <tr>
                        <th>ID: </th>
                        <td>{{ $footerphotos->id }}</td>
                    </tr>
                    <tr>
                        <th>Hình ảnh: </th>
                        <td><img width="50%" src="{{ asset($footerphotos->image_path) }}" alt=""></td>
                    </tr>
                   
                   
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('customJS')
@endsection