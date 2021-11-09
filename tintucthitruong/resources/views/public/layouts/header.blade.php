@php
$logo = \App\Logo::first();
$categories = \App\Category::all();
@endphp
{{-- <div class="header_container">
    <div class="header clearfix">
        <div class="logo">
            <h1>
                <a href="" title="Trading Intelligence">Trading Intelligence</a>
            </h1>
            <h4></h4>
        </div>
        <div class="header_top_right_sidebar_container">
            <div class="textwidget">
                <div class="placeholder">728 x 90</div>
            </div>
        </div>
    </div>
</div> --}}
<div class="menu_container   collapsible-mobile-submenus" style="background-color: rgba(238, 238, 238, 0.95); position: fixed; z-index: 100000; width: 100%;">
    <a href="/" class="news_home_show_mobile">
        <img id="logo" style="float:left" height="50px" src="{{ asset("").$logo->image }}">
    </a>
    <a href="#" class="mobile-menu-switch">
        <span class="line"></span>
        <span class="line"></span>
        <span class="line"></span>
    </a>
    <div class="mobile-menu-divider"></div>
    <!-- UberMenu [Configuration:main] [Theme Loc:main-menu] [Integration:auto] -->
    <nav id="ubermenu-main-19-main-menu" class="ubermenu ubermenu-nojs ubermenu-main ubermenu-menu-19 ubermenu-loc-main-menu ubermenu-responsive-collapse ubermenu-horizontal ubermenu-transition-none ubermenu-trigger-hover_intent ubermenu-skin-none  ubermenu-bar-align-center ubermenu-items-align-left ubermenu-bound ubermenu-disable-submenu-scroll ubermenu-sub-indicators ubermenu-retractors-responsive">
        <ul id="ubermenu-nav-main-19-main-menu" class="ubermenu-nav">
            <li id="menu-item-1185" class=" news_home_hide_mobile logo ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-1185 ubermenu-item-level-0">
                <a href="/" tabindex="0">
                    <img id="logo" height="100%" src="{{ asset("").$logo->image }}">
                </a>
            </li>
            <li id="menu-item-827" class="{{ request()->is('/') ? 'ubermenu-current-menu-ancestor' : '' }} ubermenu-item ubermenu-item-type-custom ubermenu-item-object-custom ubermenu-item-801 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="/" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text ">Trang Chủ</span>
                </a>
            </li>
            <li id="menu-item-816" class=" ubermenu-item ubermenu-item-type-custom ubermenu-item-object-custom ubermenu-item-has-children ubermenu-item-816 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="#" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Tin tức</span>
                </a>
                <ul class="ubermenu-submenu ubermenu-submenu-id-816 ubermenu-submenu-type-flyout ubermenu-submenu-drop ubermenu-submenu-align-left_edge_item">
                    @foreach ($categories as $element)
                    <li id="menu-item-1190" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-1190 ubermenu-item-auto ubermenu-item-normal ubermenu-item-level-1">
                        <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="{{ route('news.category',$element->slug) }}">
                            <span class="ubermenu-target-title ubermenu-target-text">{{$element->title}}</span>
                        </a>
                    </li>
                    @endforeach
                </ul>
            </li>
            <li id="menu-item-1221" class="{{ request()->is('brokers') ? 'ubermenu-current-menu-ancestor' : '' }} ubermenu-item ubermenu-item-type-custom ubermenu-item-object-custom ubermenu-item-1221 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-mega">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="/brokers" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Brokers</span>
                </a>
            </li>
            <li id="menu-item-801" class="{{ request()->is('quan-diem') ? 'ubermenu-current-menu-ancestor' : '' }} ubermenu-item ubermenu-item-type-custom ubermenu-item-object-custom ubermenu-item-801 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="/quan-diem" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Quan điểm</span>
                </a>
            </li>
            <li id="menu-item-1177" class="{{ request()->is('kien-thuc') ? 'ubermenu-current-menu-ancestor' : '' }} ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-1177 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="/danh-muc/kien-thuc" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Kiến thức</span>
                </a>
            </li>
            <li id="menu-item-1177" class="{{ request()->is('lich-kinh-te') ? 'ubermenu-current-menu-ancestor' : '' }} ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-1177 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="/lich-kinh-te" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Lịch kinh tế</span>
                </a>
            </li>
            <div class="news_home_show_mobile">
            <li id="menu-item-1177" style="" class=" ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-1177 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only" href="{{ route('AdminQuanDiem.login') }}" tabindex="0">
                    <span class="ubermenu-target-title ubermenu-target-text">Đăng nhập</span>
                </a>
            </li>
            </div>
        </ul>
    </nav>
    <!-- End UberMenu -->
    <div class="news_home_hide_mobile">
        <div style="position: fixed;top: 9px;right: 15px;font-size: 16px; background-color: red;  padding: 8px;border-radius: 5px;">
            <a style="color: white;" href="{{ route('AdminQuanDiem.login') }}">Đăng nhập</a>
        </div>
    </div>
</div>