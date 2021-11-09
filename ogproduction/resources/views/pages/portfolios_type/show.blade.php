@extends('layouts.app')
@section('title','Danh mục đầu tư - '.$portfolio->title)

@section('customCSS')

@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('portfolios.index') }}" class="btn btn-primary btn-rounded">Quay lại</a>
        </div>
        <div class="table-responsive">
            <table class="table table-hover">
                <tbody>
                    <tr>
                        <th>Tiêu đề: </th>
                        <td>{{ $portfolio->title }}</td>
                    </tr>
                    <tr>
                        <th>Hình ảnh: </th>
                        <td><img width="50%" src="{{ asset($portfolio->image_path) }}" alt=""></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <th>Video: </th>
                        <td><iframe src="https://www.youtube.com/embed/{{ $portfolio->video_path  }}" frameborder="0" scrolling="scroll" ></iframe></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('customJS')
@endsection