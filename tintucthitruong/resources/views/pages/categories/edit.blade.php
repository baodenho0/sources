@extends('layouts.app')
@section('title','Thêm mới danh mục')

@section('customCSS')
@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('categories.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
        </div>
        <form action="{{ route('categories.update',$categories->id) }}" method="post">
            <div class="row">
                <div class="col-sm-8">
                    <div class="form-group">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                    </div>
                    <div class="form-group">
                        <label for="name">Tiêu đề</label>
                        <input type="text" class="form-control" name="title" value="{{ $categories->title }}">
                        @if($errors->has('title'))
                            <p class="text-danger">{{ $errors->first('title') }}</p>
                        @endif
                    </div>
                </div>
            </div>
            <div class="form-group pull-right">
                <button type="submit" class="btn btn-success">Cập nhật</button>
            </div>
        </form>
    </div>
@endsection

@section('customJS')
@endsection