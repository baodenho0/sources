<ul style="display: none">
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