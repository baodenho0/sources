@php
$postType = new \App\PostType;
$getPostType = $postType->getAll();
$productType = new \App\Category;
$getProductType = $productType->getAll();
$logo = \App\Logo::first();
// echo $getProductType;die;
@endphp
<nav id="ro-main-nav" class="ro-main-nav-style-1" style="padding-top: 0px;">
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
            <li><a>PRODUCTS</a>
                <ul class="ro-sub-nav">
                    @foreach ($getProductType as $element)
                    <li><a href="{{ route('website.shop',$element->slug) }}">{{$element->name}}</a></li>
                    @endforeach
                </ul>
            </li>
            <li><a href="{{ route('website.services') }}">SERVICES</a></li>
            <li><a href="{{ route('website.questionanswer') }}">Q & A</a></li>
            <li><a href="{{ route('website.special') }}">BOOK ONLINE</a></li>
            <li><a href="{{ route('website.finacing') }}">FINANCING</a></li>
            <li><a>BLOG</a>
                <ul class="ro-sub-nav">
                    <li><a href="{{ route('blog.getBySlug','new') }}">New</a></li>
                    @foreach ($getPostType as $element)
                    <li><a href="{{ route('blog.getBySlug',$element->slug) }}">{{$element->title}}</a></li>
                    @endforeach
                </ul>
            </li>
            {{-- <li><a href="reservation.html">RESERVATION</a></li> --}}
            <li><a href="{{ route('website.contact') }}">CONTACT</a></li>
        </ul>
        <div id="ro-hamburger" class="ro-hamburger visible-xs pull-right"><span></span></div>
        <div class="clearfix"></div>
        <div class="ro-hr ro-full"></div>
    </div>
</nav>
