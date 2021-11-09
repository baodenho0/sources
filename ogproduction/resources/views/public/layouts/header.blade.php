<div class="header_style_wrapper">
    <!-- End top bar -->
    <div class="top_bar hasbg">
        <div class="standard_wrapper">
            <!-- Begin logo -->
            <div id="logo_wrapper">
                <div id="logo_normal" class="logo_container">
                    <div class="logo_align">
                        <a id="custom_logo" class="logo_wrapper hidden" href="">
                            <img src="{{ asset('uploads/logo.png') }}" alt="" width="46" height="33" />
                        </a>
                    </div>
                </div>
                <div id="logo_transparent" class="logo_container">
                    <div class="logo_align">
                        <a id="custom_logo_transparent" class="logo_wrapper default" href="">
                            <img src="{{ asset('uploads/logo.png') }}" alt="" width="50" height="50" />
                        </a>
                    </div>
                </div>
                <!-- End logo -->
                <div id="menu_wrapper">
                    <div id="nav_wrapper">
                        <div class="nav_wrapper_inner">
                            <div id="menu_border_wrapper">
                                <div class="menu-main-left-menu-container">
                                    @include('public.layouts.menu-left')
                                </div>
                            </div>
                            <!-- Begin right corner buttons -->
                            <div id="logo_right_button" style="padding-top: 19px">
                                <!-- Begin side menu -->
                                <a class="close_mobile_menu" href="javascript:;" id="mobile_nav_icon"></a>
                                <div class="mobile_menu_wrapper">
                                    <a id="mobile_menu_close" href="javascript:;" class="button"><i class="fa fa-close"></i></a>
                                    <div class="mobile_menu_content">
                                        <div class="menu-side-mobile-menu-container">
                                            @php
                                            $items = \App\Menu::where('name','master')->first()->items()->where('parent_id',0)->get();
                                            @endphp
                                            <ul id="mobile_main_menu" class="mobile_main_nav">
                                                @foreach($items as $item)
                                                <li class="menu-item">
                                                    <a style="font-size: 22pt;" href="{{ $item->url}}">{{ $item->title }}</a>
                                                    @if($item->childs)
                                                    <ul id="mobile_main_menu">
                                                        @foreach($item->childs as $child)
                                                        <li>
                                                            <a style="font-size: 17pt;" href="{{ $child->url}}">{{ $child->title }}</a>
                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                    @endif
                                                </li>
                                                @endforeach
                                            </ul>
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
                                <!-- End side menu -->
                            </div>
                            <!-- End right corner buttons -->
                            <div id="menu_border_wrapper_right">
                                <div class="menu-main-right-menu-container">
                                    @include('public.layouts.menu-right')
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End main nav -->
                </div>
            </div>
        </div>
    </div>
</div>