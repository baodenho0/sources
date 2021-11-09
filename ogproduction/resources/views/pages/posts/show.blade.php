@extends('layouts.app')
@section('title','Bài Viết')
@section("customCSS")
<link rel="stylesheet" type="text/css" href="{{asset('assets/vendor/Rich-Text-Editor-jQuery-RichText/richtext.min.css')}}">
@stop
@section("customJS")
<script type="text/javascript" src="{{asset('assets/vendor/Rich-Text-Editor-jQuery-RichText/jquery.richtext.min.js')}}"></script>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=3k15zu2k0vorhhws82kgqf6xwlotyu3mf1e4g7pxosgsdswa"></script>
<script type="text/javascript">
  //$('#body').richText()
  $(function(){
    tinymce.init({
      selector : '#body'});  
  });
  
</script>
@stop
@section('content')

<form class="form-horizontal" action="/posts" method="post" enctype="multipart/form-data">
  {{ csrf_field() }}
  <div class="mb-1">
    <a href="{{ route('posts.index') }}" class="btn btn-danger btn-rounded">Quay lại</a>
  </div>
  <div class="form-group">
    <label for="title">Title:</label>
    <div>
      <input readonly="true" type="text" class="form-control" id="title" name="title" value="{{$post->title}}">
    </div>
  </div>
  <div class="form-group">
    <label for="title">Slug:</label>
    <div>
      <input readonly="true" type="text" class="form-control" id="slug" name="slug" value="{{$post->slug}}">
    </div>
  </div>
  <div class="form-group">
    <label for="image">Image:</label>
    <div>
      <img src="{{asset($post->image_path )}}">
    </div>
  </div>
  <div class="form-group">
    <label for="title">Category:</label>
    <div>
      <input readonly="true" type="text" class="form-control" id="title" name="title" value="{{$post->catg->title}}">
    </div>
  </div>
  
  <div class="form-group">
    <label for="image">Description:</label>
    <div >
      <textarea readonly="true" rows="5" style="width: 100%" id="description" name="description">{{$post->description}}</textarea>
    </div>
  </div>
  <div class="form-group">
    <label  for="image">Body:</label>
    <div >
      <textarea disabled="true" readonly="true" rows="30" cols="100" id="body" name="body">
        {!!$post->body!!}
      </textarea>
    </div>
  </div>
</form>
@stop