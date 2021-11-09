@extends('public.layouts.app')
@section('title','Gallery')
@section('styles')
<style type="text/css">
.row {
    display: -ms-flexbox;
    /* IE10 */
    display: flex;
    /*-ms-flex-wrap: wrap;*/
    /* IE10 */
    /*flex-wrap: wrap;*/
    padding: 0 4px;
    flex-wrap: nowrap;
}

/* Create four equal columns that sits next to each other */
.column {
    -ms-flex: 32.9%;
    /* IE10 */
    flex: 31.9%;
    max-width: 32.9%;
    padding: 0 4px;
}

.column img {
    margin-top: 8px;
    vertical-align: middle;
    width: 100%;
}

/*.clearfix {
    overflow: auto;
}*/

@media screen and (max-width: 800px) {
    .column {
        -ms-flex: 50%;
        flex: 50%;
        max-width: 47%;
    }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column {
        -ms-flex: 100%;
        flex: 100%;
        max-width: 100%;
    }
}
</style>
@endsection
@section('wrapper')
@php
$for = $gallery->images; //echo $for; die;
$count = $gallery->images->count();
$chia = floor($count / 3);
$du = $count % 3;
$for1 = $chia;
$for2 = $chia;
$for3 = $chia;
if($du == 1){
$for1 = $chia + 1;
}
if($du == 2){
$for1 = $chia + 1;
$for2 = $chia + 1;
}
// echo 'count: '.$count;
// echo 'chia: '.$chia;
// echo 'du: '.$du;
// echo 'for1: '.$for1;
// echo 'for2: '.$for2;
// echo 'for3: '.$for3; die;
// dd($count);
@endphp
<div id="page_content_wrapper row" class="wide">
    <div class="inner">
        <div class="inner_wrapper nopadding">
            <div id="page_main_content" class="sidebar_content full_width nopadding fixed_column">
                <div id="portfolio_filter_wrapper" class="gallery four_cols portfolio-content section content  wide" data-columns="1">
                    <div class="row">
                        <div class="column">
                            @for ($i = 0; $i < $for1; $i++) <div class="masonry classic4_cols">
                                <div class="one_fourth gallery4 static filterable gallery_type animated1 slideUp" data-id="post-1">
                                    <a class="fancy-gallery" href="{{ asset($for[$i]->url) }}">
                                        <img src="{{ asset($for[$i]->url) }}" alt="">
                                    </a>
                                </div>
                        </div>
                        @endfor
                    </div>
                    <div class="column">
                        @for ($i = $for1; $i < $for1 + $for2; $i++) <div class="masonry classic4_cols">
                            <div class="one_fourth gallery4 static filterable gallery_type animated1 slideUp" data-id="post-1">
                                <a class="fancy-gallery" href="{{ asset($for[$i]->url) }}">
                                    <img src="{{ asset($for[$i]->url) }}" alt="">
                                </a>
                            </div>
                    </div>
                    @endfor
                </div>
                <div class="column">
                    @for ($i = $for1 + $for2; $i < $for1 + $for2 + $for3; $i++) <div class="masonry classic4_cols">
                        <div class="one_fourth gallery4 static filterable gallery_type animated1 slideUp" data-id="post-1">
                            <a class="fancy-gallery" href="{{ asset($for[$i]->url) }}">
                                <img src="{{ asset($for[$i]->url) }}" alt="">
                            </a>
                        </div>
                </div>
                @endfor
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
{{-- <div class="column">
    @include('public.layouts.footer')
</div> --}}
@endsection