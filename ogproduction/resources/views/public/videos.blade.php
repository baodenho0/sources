@extends('public.layouts.app')
@section('title','Videos')
@section('wrapper')
<div id="page_caption" class="  single_gallery wide">
    <div class="page_title_wrapper">
        <div class="page_title_inner">
            <div class="page_title_content">
                <h1>Videos</h1>
                <hr class="title_break bold">
                <div class="page_tagline">
                    Hãy xem những video của chúng tôi<br>
                    Để bạn hiểu rõ chúng tôi hơn. </div>
            </div>
        </div>
    </div>
</div>
<div id="portfolios" class="portfolio_mixed_filter_wrapper gallery portfolio-content section content clearfix three_cols wide" data-columns="3">
    @php
    $slug = Request::segment(2);
    $portfolios = \App\Portfolio::orderBy('portfolios.created_at','asc')
    ->where('portfolios_type.slug',$slug)
    ->join('portfolios_type','portfolios_type.id','type')
    ->get();
    // echo $portfolios; die;
    @endphp
    @foreach($portfolios as $portfolio)
    <div class="element classic3_cols {{ $portfolio->size }}">
        <div class="one_third gallery3 {{ $portfolio->size }} filterable static1 portfolio_type">
            <a href="https://www.youtube.com/embed/{{ $portfolio->video_path }}" class="lightbox_youtube" data-options="width:1425, height:802">
                <img src="{{ asset($portfolio->image_path) }}" alt="{{ $portfolio->title }}" />
                <div class="portfolio_type_wrapper"><i class="fa fa-play"></i></div>
                <div id="portfolio_desc_6396" class="portfolio_title">
                    <div class="image_caption">
                        <h5>{{ $portfolio->title }}</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
</div>
@include('public.layouts.footer')
@endsection