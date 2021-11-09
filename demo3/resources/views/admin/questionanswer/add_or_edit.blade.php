@extends('admin.layouts.app')
@section('title','Add Question and Answer')
@section('style')
{{--
<link href="vendor/summernote/summernote-lite.css" rel="stylesheet"> --}}
<style>
    .panel-heading{
         background: #f8f9fc;
      }
   </style>
@stop
@section('content')
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add Q & A</h6>
        </div>
        <div class="card-body">
            <form role="form" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-8 personal-info">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-lg-2 col-form-label form-control-label">Question</label>
                                    <div class="col-lg-10">
                                        <textarea  class="form-control " type="text" name="question" rows="2" cols="50"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-lg-2 col-form-label form-control-label">Answer</label>
                                    <div class="col-lg-10">
                                        <textarea  class="form-control " type="text" name="answer" rows="2" cols="50"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        {{-- <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-lg-2 col-form-label form-control-label">Mô tả </label>
                                    <div class="col-lg-10">
                                        <textarea id="summernote" name="description" class="form-control" rows="4" cols="50"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div> --}}
                        <div class="form-group row">
                            <label class="col-lg-2 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <a href="{{ route('questionanswer') }}" class="btn btn-secondary">Cancel</a>
                                <input type="submit" class="btn btn-primary" value="Save " />
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{ asset('admin/js/upload_avatar.js') }}"></script>
{{-- <script src="vendor/summernote/summernote-lite.js"></script> --}}
{{-- <script>
$('#summernote').summernote();
$('.note-icon-trash').trigger('click');

</script> --}}
@endsection
