@extends('admin.layouts.app')
@section('title','Edit Title')
@section('content')
<div class="container-fluid">
   <div class="card shadow mb-4">
      <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Edit Title</h6>
      </div>
      <div class="card-body">
         <form role="form" method="post" enctype="multipart/form-data">
            @csrf
            <div class="row">
            <div class="col-lg-8">
            <div class="row">
               <div class="col-lg-10">
                  <div class="form-group row">
                     <label class="col-lg-2 col-form-label form-control-label">Title</label>
                     <div class="col-lg-9">                     
                        <input required="" class="form-control @error('title') is-invalid @enderror" type="text" name="title" value="{{isset($title->title) ? $title->title : old('title')}}" placeholder="Title" maxlength="200"/>
                     </div>      
                  </div>
               </div>
            </div>


            <div class="form-group row">
               <label class="col-lg-2 col-form-label form-control-label"></label>
               <div class="col-lg-9">                     
                  <a href="{{ route('home') }}" class="btn btn-secondary">Cancel</a>
                  <input type="submit" class="btn btn-primary" value="Save Changes" />
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

@endsection