@extends('layouts.app')
@section('title','Sliders - '.$slider->title)
@section('customCSS')
@endsection
@section('content')
<div class="box box-block bg-white clearfix">
    <div class="mb-1">
        <a href="{{ route('sliders.index') }}" class="btn btn-primary btn-rounded">Quay lại</a>
    </div>
    <div class="table-responsive">
        <table class="table table-hover">
            <tbody>
                <tr>
                    <th>Tên: </th>
                    <td>{{ $slider->name }}</td>
                </tr>
                <tr>
                    <th>Tiêu đề: </th>
                    <td>{{ $slider->title }}</td>
                </tr>
                @if(!empty($slider->btn_name))
                <tr>
                    <th>Tên button: </th>
                    <td>{{ $slider->btn_name }}</td>
                </tr>
                @if(!empty($slider->btn_url))
                <tr>
                    <th>Đường dẫn button: </th>
                    <td>{{ $slider->btn_url }}</td>
                </tr>
                @else
                <tr>
                    <th>Tên route button: </th>
                    <td>{{ $slider->btn_route }}</td>
                </tr>
                @endif
                @endif
                {{-- <tr>
                    <th>Video: </th>
                    <td>
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $slider->video_path }}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </td>
                </tr> --}}
            </tbody>
        </table>
    </div>
</div>
@endsection
@section('customJS')
@endsection