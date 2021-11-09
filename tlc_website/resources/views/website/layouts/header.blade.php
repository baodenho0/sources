@php
$postType = new \App\PostType;
$getPostType = $postType->getAll();
$productType = new \App\Category;
$getProductType = $productType->getAll();
$logo = \App\Logo::first();
// echo $getProductType;die;
@endphp

<div class="financity-mobile-header-wrap">
    <div class="financity-mobile-header financity-header-background financity-style-slide" id="financity-mobile-header">
        <div class="financity-mobile-header-container financity-container">
            <div class="financity-logo financity-item-pdlr">
                <div class="financity-logo-inner">
                    <a href="/"><img src="{{loadImage($logo->image)}}" alt="" width="1181" height="564" title="{{$logo->title}}" /></a>
                </div>
            </div>
            <div class="financity-mobile-menu-right">
                <div class="financity-main-menu-search" id="financity-mobile-top-search"><i class="fa fa-search"></i></div>
                <div class="financity-top-search-wrap">
                    <div class="financity-top-search-close"></div>

                    <div class="financity-top-search-row">
                        <div class="financity-top-search-cell">
                            <form role="search" method="get" class="search-form" action="">
                                <input type="text" class="search-field financity-title-font" placeholder="Search..." value="" name="s" />
                                <div class="financity-top-search-submit"><i class="fa fa-search"></i></div>
                                <input type="submit" class="search-submit" value="Search" />
                                <div class="financity-top-search-close"><i class="icon_close"></i></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="financity-mobile-menu">
                    <a class="financity-mm-menu-button financity-mobile-menu-button financity-mobile-button-hamburger" href="#financity-mobile-menu"><span></span></a>
                    <div class="financity-mm-menu-wrap financity-navigation-font" id="financity-mobile-menu" data-slide="right">
                        <ul id="menu-mobile-throne" class="m-menu">
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home page_item page-item-5539 menu-item-6275">
                                <a href="{{ asset('/') }}" class="menu-image-title-after"><span class="menu-image-title">Trang chủ</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6276">
                                <a href="{{ asset('aboutus') }}" class="menu-image-title-after"><span class="menu-image-title">Chúng tôi</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6277">
                                <a href="{{ asset('bmln') }}" class="menu-image-title-after"><span class="menu-image-title">BMLN</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6278">
                                <a href="{{ asset('partnership') }}" class="menu-image-title-after"><span class="menu-image-title">Đối tác chiến lược</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6279">
                                <a href="{{ asset('hop-tac') }}" class="menu-image-title-after"><span class="menu-image-title">Hợp tác</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6279">
                                <a href="{{ asset('nen-tang-giao-dich') }}" class="menu-image-title-after"><span class="menu-image-title">Nền tảng giao dịch</span></a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6538">
                                <a href="{{ asset('newsandevents') }}" class="menu-image-title-after"><span class="menu-image-title">Tin tức & sự kiện</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6280">
                                <a href="{{ route('website.contact') }}" class="menu-image-title-after"><span class="menu-image-title">Liên hệ</span></a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6281">
                                <a class="lang" data='en' href="{{ route('lang.vi') }}" class="menu-image-title-after menu-image-not-hovered">
                                    <img width="36" height="26" src="{{ asset('tlc/images/enflag.png') }}" class="menu-image menu-image-title-after" alt="" /><span class="menu-image-title">English</span>
                                </a>
                            </li>
                            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6281">
                                <a class="lang" data='vi' href="{{ route('lang.vi') }}" class="menu-image-title-after menu-image-not-hovered">
                                    <img width="36" height="26" src="{{ asset('tlc/images/vnflag.png') }}" class="menu-image menu-image-title-after" alt="" /><span class="menu-image-title">Việt Nam</span>
                                </a>
                            </li>
                            <li class="financity-header-right-button menu-item menu-item-type-custom menu-item-object-custom menu-item-6296">
                                <a href="/register" class="show_popup menu-image-title-after"><span class="menu-image-title">Tạo tài khoản</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="financity-top-bar">
    <div class="financity-top-bar-background"></div>
    <div class="financity-top-bar-container clearfix financity-container financity-no-divider">
        <div class="financity-top-bar-right financity-item-pdlr">
            <div class="financity-top-bar-right-text">
                <a class="lang" data='en' href="{{ route('lang.en') }}"><img src="{{ asset('tlc/images/enflag.png') }}" /></a> | <a class="lang" data='vi' href="{{ route('lang.vi') }}"><img src="{{ asset('tlc/images/vnflag.png') }}" /></a>
            </div>
        </div>
    </div>
</div>
<header class="financity-header-wrap financity-header-style-bar financity-style-left">
    <div class="financity-header-background"></div>
    <div class="financity-header-container clearfix financity-container">
        <div class="financity-header-container-inner">
            <div class="financity-logo financity-item-pdlr">
                <div class="financity-logo-inner">
                    <a href="/"><img src="{{loadImage($logo->image)}}" alt="" width="1181" height="564" title="{{$logo->title}}" /></a>
                </div>
            </div>
            <div class="financity-logo-right-text financity-item-pdlr">
                <div class="financity-logo-right-block">
                    <i class="financity-logo-right-block-icon icon_check_alt2"></i>
                    <div class="financity-logo-right-block-content">
                    <div class="financity-logo-right-block-title">Chuyên Nghiệp</div>
                    <div class="financity-logo-right-block-caption">Rõ Ràng</div>
                    </div>
                    
                </div>
                <div class="financity-logo-right-block">
                    <i class="financity-logo-right-block-icon icon_check_alt2"></i>
                    <div class="financity-logo-right-block-content">
                        <div class="financity-logo-right-block-title">An Toàn</div>
                        <div class="financity-logo-right-block-caption">+200,000 Khách hàng</div>
                    </div>
                    
                </div>
                <div class="financity-logo-right-block">
                    <i class="financity-logo-right-block-icon icon_check_alt2"></i>
                    <div class="financity-logo-right-block-content">
                        <div class="financity-logo-right-block-title">Số #1</div>
                        <div class="financity-logo-right-block-caption">Tại Việt Nam</div>
                    </div>
                    
                </div>
               <a class="financity-header-right-button" href="/register" >Tạo Tài Khoản</a>
            </div>
        </div>
    </div>

    <div class="financity-navigation-bar-wrap financity-sticky-navigation financity-sticky-navigation-height financity-style-left financity-style-fixed">
        <div class="financity-navigation-background"></div>
        <div class="financity-navigation-container clearfix financity-container">
            <div class="financity-navigation financity-item-mglr clearfix">
                <div class="financity-main-menu" id="financity-main-menu">
                    <ul id="menu-throne" class="sf-menu">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home page_item page-item-5539 current_page_item menu-item-5680 financity-normal-menu @if(Request::is('/')) current-menu-item @endif">
                            <a href="{{ asset('/') }}" class="menu-image-title-after"><span class="menu-image-title">Trang chủ</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5681 financity-normal-menu @if(Request::is('aboutus')) current-menu-item @endif">
                            <a href="{{ asset('aboutus') }}" class="menu-image-title-after"><span class="menu-image-title">Chúng tôi</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5683 financity-normal-menu @if(Request::is('bmln')) current-menu-item @endif">
                            <a href="{{ asset('bmln') }}" class="menu-image-title-after"><span class="menu-image-title">BMLN</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5684 financity-normal-menu @if(Request::is('partnership')) current-menu-item @endif">
                            <a href="{{ asset('partnership') }}" class="menu-image-title-after"><span class="menu-image-title">Đối tác chiến lược</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5682 financity-normal-menu @if(Request::is('hop-tac')) current-menu-item @endif">
                            <a href="{{ asset('hop-tac') }}" class="menu-image-title-after"><span class="menu-image-title">Hợp tác</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5682 financity-normal-menu @if(Request::is('nen-tang-giao-dich')) current-menu-item @endif">
                            <a href="{{ asset('nen-tang-giao-dich') }}" class="menu-image-title-after"><span class="menu-image-title">Nền tảng giao dịch</span></a>
                        </li>
                        
                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6532 financity-normal-menu @if(Request::is('newandevents')) current-menu-item @endif">
                            <a href="{{ route('newsandevents') }}" class="menu-image-title-after"><span class="menu-image-title">Tin tức & sự kiện</span></a>
                        </li>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5686 financity-normal-menu @if(Request::is('contactus')) current-menu-item @endif">
                            <a href="{{ route('website.contact') }}" class="menu-image-title-after"><span class="menu-image-title">Liên hệ</span></a>
                        </li>
                       
                    </ul>
                </div>
                <!-- <div class="financity-main-menu-right-wrap clearfix">
                    <div class="financity-main-menu-search" id="financity-top-search"><i class="fa fa-search"></i></div>
                    <div class="financity-top-search-wrap">
                        <div class="financity-top-search-close"></div>

                        <div class="financity-top-search-row">
                            <div class="financity-top-search-cell">
                                <form role="search" method="get" class="search-form" action="">
                                    <input type="text" class="search-field financity-title-font" placeholder="Search..." value="" name="s" />
                                    <div class="financity-top-search-submit"><i class="fa fa-search"></i></div>
                                    <input type="submit" class="search-submit" value="Search" />
                                    <div class="financity-top-search-close"><i class="icon_close"></i></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <!-- financity-navigation -->
        </div>
        <!-- financity-header-container -->
    </div>
    <!-- financity-navigation-bar-wrap -->
</header>
<!-- header -->


<!-- <nav id="ro-main-nav" class="ro-main-nav-style-1" style="padding-top: 0px;">
    <div class="container">
        <div class="ro-brand">
            <a href="">
                <img style="margin-bottom: 0px;height: 90px;" src="{{loadImage($logo->image)}}" alt="{{$logo->title}}">
            </a>
        </div>
        <ul class="ro-nav-content text-center">
            <li class="visible-xs"><a href="index.html"><img src="{{ asset('website/assets/images/aqua-brand3.svg') }}" alt="Aqua spa"></a></li>
            <li><a href="{{route('website.home')}}">HOME</a>
                {{-- <ul class="ro-sub-nav">
                    <li><a href="basic.html">Basic</a></li>
                    <li><a href="fullwidth.html">Full width</a></li>
                    <li><a href="fullheight.html">Full height</a></li>
                    <li><a href="onepage.html">Onepage</a></li>
                    <li><a href="shop-homepage.html">Shoping</a></li>
                    <li><a href="update-1.html">Homepage Update 01</a></li>
                    <li><a href="update-2.html">Homepage Update 02</a></li>
                </ul> --}}
            </li>
            {{-- <li><a href="about.html">PAGES</a>
                <ul class="ro-sub-nav">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="404.html">404 Error</a></li>
                    <li><a href="underconstruction.html">Under Construction</a></li>
                </ul>
            </li> --}}
            <li><a>SHOP</a>
                <ul class="ro-sub-nav">
                    
                </ul>
            </li>
            <li><a>BLOG</a>
                <ul class="ro-sub-nav">
                    <li><a href="{{ route('blog.getBySlug','new') }}">New</a></li>
                    @foreach ($getPostType as $element)
                    <li><a href="{{ route('blog.getBySlug',$element->slug) }}">{{$element->title}}</a></li>
                    @endforeach
                </ul>
            </li>
            <li><a href="{{ route('website.special') }}">SPECIAL</a></li>
            <li><a href="{{ route('website.finacing') }}">FINANCING</a></li>
            {{-- <li><a href="reservation.html">RESERVATION</a></li> --}}
            <li><a href="{{ route('website.contact') }}">CONTACT</a></li>
        </ul>
        <div id="ro-hamburger" class="ro-hamburger visible-xs pull-right"><span></span></div>
        <div class="clearfix"></div>
        <div class="ro-hr ro-full"></div>
    </div>
</nav> -->
  
@section("scripts")  

@endsection
