@extends('auth.layouts.app')
@section('title','Login')
@section('content')
    <div class="sign-form">
        <div class="row">
            <div class="col-md-4 offset-md-4 px-3">
                <div class="box b-a-0">
                    <div class="p-2 text-xs-center">
                        <h5>Welcome</h5>
                    </div>
                    <form class="form-material mb-1" action="" method="POST">
                        @if($errors->any())
                            <p style="text-align: center;" class="text-danger">{{ $errors->first() }}</p>
                        @endif
                        <div class="form-group">
                            {!! csrf_field() !!}
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email">

                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control"name="password" placeholder="Password">
                        </div>
                        <div class="px-2 form-group pb-2">
                            <button type="submit" class="btn btn-purple btn-block text-uppercase">Sign in</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection