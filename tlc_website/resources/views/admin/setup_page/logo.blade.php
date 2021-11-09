@extends('admin.layouts.app')
@section('title','Edit Logo')
@section('content')
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edit Logo</h6>
        </div>
        <div class="card-body">
            <form role="form" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-8 push-lg-4 personal-info">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Title</label>
                                    <div class="col-lg-8">
                                        <input required="" class="form-control @error('title') is-invalid @enderror" type="text" name="title" value="{{isset($logo->title) ? $logo->title : old('title')}}" placeholder="Title" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Register range begin</label>
                                    <div class="col-lg-8">
                                        <input required="" class="form-control @error('range_begin') is-invalid @enderror" type="number" name="range_begin" id="range_begin" value="{{isset($logo->range_begin) ? $logo->range_begin : old('range_begin')}}" placeholder="Register range begin" />
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Register range end</label>
                                    <div class="col-lg-8">
                                        <input required="" id="range_end" class="form-control @error('range_begin') is-invalid @enderror" type="number" name="range_end" value="{{isset($logo->range_end) ? $logo->range_end : old('range_end')}}" placeholder="Register range end" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Tổng user range</label>
                                    <div class="col-lg-6">
                                        <input required="" class="form-control @error('register_number') is-invalid @enderror" type="text" name="register_number" id="register_number" value="{{isset($logo->register_number) ? $logo->register_number : old('register_number')}}" placeholder="Tổng User" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label style="color: red" class="col-lg-12 col-form-label form-control-label">Vui lòng đổi "Số user đã gửi" về 0 khi thay đổi dãy tài khoản</label>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Số user đã gửi</label>
                                    <div class="col-lg-6">
                                        <input required="" class="form-control @error('register_count') is-invalid @enderror" type="text" name="register_count" value="{{isset($logo->register_count) ? $logo->register_count : old('register_count')}}" placeholder="Số user đã gửi" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label form-control-label">Register password</label>
                                    <div class="col-lg-8">
                                        <input required="" class="form-control @error('register_password') is-invalid @enderror" type="text" name="register_password" value="{{isset($logo->register_password) ? $logo->register_password : old('register_password')}}" placeholder="Register password" />
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
                    <div class="col-lg-4 pull-lg-8 text-xs-center">
                        <img style="" src="{{loadImage($logo->image)}}" class="m-x-auto img-fluid " alt="avatar" />
                        <h6 class="m-t-2">Upload a different photo</h6>
                        <label class="custom-file col-md-8">
                            <span id="choose_file" class="form-control">Chọn hình</span>
                            <input accept="image/*" type="file" id="file" name="image" class="custom-file-input">
                        </label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{ asset('admin/js/upload_avatar.js') }}"></script>
<script>
    function caculator(){
       total = parseInt($('#range_end').val()) - parseInt($('#range_begin').val()) +1;
       $('#register_number').val(total);
    }

    $('#range_begin').on('input',function(e){
        caculator();
    });
    $('#range_end').on('input',function(e){

        caculator();
    });
</script>
@endsection
