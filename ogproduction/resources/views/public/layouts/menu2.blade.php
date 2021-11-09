<link rel="stylesheet" type="text/css" href="{{asset('assets/css/core.css')}}">
<script type="text/javascript" src="{{asset('assets/vendor/jquery/jquery-1.12.3.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/tether/js/tether.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/bootstrap4/js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/detectmobilebrowser/detectmobilebrowser.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/jscrollpane/jquery.mousewheel.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/jscrollpane/mwheelIntent.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/jscrollpane/jquery.jscrollpane.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/vendor/waves/waves.min.js')}}"></script>
<!-- Neptune JS -->
<script type="text/javascript" src="{{asset('assets/js/app.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/js/demo.js')}}"></script>
<style type="text/css">
.site-sidebar {
    position: absolute;
    z-index: 99;
    top: 0;
    bottom: 0;
    left: 0;
    margin-top: 0px;
    /* margin-top: 60px; */
    width: 100%;
    background-color: #212330;
}
</style>
<div class="site-sidebar">
    <div class="custom-scroll custom-scroll-light">
        @php
        $menu=\App\Menu::where("id",2)->first();
        $items=$menu->items;
        @endphp
        <ul class="sidebar-menu">
            @foreach($items as $item)
            @if($item->childs==null || count($item->childs)==0)
            <li>
                <a href="{$item->url}}" target="" class="waves-effect waves-light">
                    <span class="s-icon"><i class=""></i></span>
                    <span class="s-text">{{$item->title}}</span>
                </a>
            </li>
            @else
            <li class="with-sub">
                <a href="#" target="" class="waves-effect waves-light">
                    <span class="s-caret"><i class="fa fa-angle-down"></i></span>
                    <span class="s-icon"><i class="ti-key"></i></span>
                    <span class="s-text">{{$item->title}}</span>
                </a>
                @include("public.layouts.menu-child", ['items' => $item->childs])
            </li>
            @endif
            </li>
            @endforeach
        </ul>
    </div>
</div>