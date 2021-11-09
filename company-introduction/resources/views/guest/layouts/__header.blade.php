@php
  $logo = App\Logo::first();
@endphp
<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="{{ route('guest.home') }}"><img height="50px" src="{{isset($logo->image) ? asset('upload/images').'/'.$logo->image :'' }} " alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item {{Request::routeIs('guest.home') ? 'active' : ''}}"><a class="nav-link" href="{{ route('guest.home') }}">Trang chủ</a></li>
              <li class="nav-item {{Request::routeIs('guest.about') ? 'active' : ''}}"><a class="nav-link " href="{{ route('guest.about') }}">Giới thiệu</a></li>
              <li class="nav-item {{Request::routeIs('guest.category') ? 'active' : ''}}"><a class="nav-link" href="{{ route('guest.category') }}">Sản phẩm</a></li>
              <li class="nav-item {{Request::routeIs('guest.customer') ? 'active' : ''}}"><a class="nav-link" href="{{ route('guest.customer') }}">Khách hàng</a></li>
              <li class="nav-item {{Request::routeIs('guest.contact') ? 'active' : ''}}"><a class="nav-link " href="{{ route('guest.contact') }}">Liên hệ</a></li>
              
            </ul>

           {{--  <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
              <li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li>
            </ul> --}}
          </div>
        </div>
      </nav>
    </div>
  </header>