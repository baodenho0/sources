@extends('public.layouts.app')
@section('title','Galleries')
@section('wrapper')



<div id="portfolios" class="portfolio_mixed_filter_wrapper gallery portfolio-content section content clearfix three_cols wide" data-columns="3">
    @foreach($galleries as $gallery)
    <div class="element classic3_cols ">
        <div class="one_third gallery3 filterable static1 portfolio_type">
            <a href="/galleries-hinh-anh/chi-tiet/{{$gallery->id}}"  data-options="width:1425, height:802">
                <img src="{{ asset($gallery->image_path) }}" alt="{{ $gallery->title }}"/>
                
                <div id="portfolio_desc_6396" class="portfolio_title">
                    <div class="image_caption">
                        <h5>{{ $gallery->title }}</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
</div>

@include('public.layouts.footer')
@endsection
