@extends('public.layouts.app')
@section('title','OG PRODUCTION')
@section('wrapper')
    @include('public.home.main-slider')
    <div  class="ppb_portfolio_mixed_grid one nopadding" >
        @include('public.home.portfolio')
        @include('public.home.second-slider')
        @include('public.home.posts')
    </div>
    @include('public.layouts.footer')
@endsection