@php $galleries = \App\Gallery::all(); @endphp
<!-- Begin mobile menu -->
<a id="close_mobile_menu" href="#"></a>
<div class="mobile_gallery_wrapper">
    <div id="menu_gallery_wrapper" class="portfolio_filter_wrapper gallery three_cols portfolio-content section content clearfix wide" data-columns="3">
        @foreach($galleries as $gallery)
        @if($gallery->images->first())
        <div class="element grid classic3_cols">
            <div class="one_third gallery3 static filterable gallery_type archive animated1" data-id="post-1">
                <a href="#">
                    <ul class="gallery_img_slides">
                        @foreach($gallery->images as $image)
                        <li><img src="{{ asset($image->url) }}" alt="" class="static" /></li>
                        @endforeach
                    </ul>
                    <img src="{{ asset($gallery->images()->first()->url) }}" alt="{{ $gallery->title }}" />
                    <div class="portfolio_title">
                        <div class="image_caption">
                            <h6>{{ $gallery->title }}</h6>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        @endif
        @endforeach
    </div>
</div>
<div class="mobile_menu_wrapper" style="overflow: hidden;">
    <a style="z-index: 1000000000000;margin-top: -30px;margin-right: -30px" id="mobile_menu_close" href="javascript:;" class="button"><i class="fa fa-close"></i></a>
    <div class="mobile_menu_content">
        <div class="menu-side-mobile-menu-container">
            <!--  @php
                $items = \App\Menu::where('name','master')->first()->items()->where('parent_id',0)->get();
            @endphp
            <ul id="mobile_main_menu" class="mobile_main_nav">
                @foreach($items as $item)
                <li class="menu-item"><a>{{ $item->title }}</a></li>
                @endforeach
            </ul> -->
            @include("public.layouts.menu")
        </div>
        <div class="social_wrapper">
            <ul>
                <li class="facebook"><a target="_blank" href="#"><i class="fa fa-facebook-official"></i></a></li>
                <li class="twitter"><a target="_blank" href="http://twitter.com/#"><i class="fa fa-twitter"></i></a></li>
                <li class="instagram"><a target="_blank" title="Instagram" href="http://instagram.com/nasualua"><i class="fa fa-instagram"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- End mobile menu -->