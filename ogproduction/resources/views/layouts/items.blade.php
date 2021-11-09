@php
    $menu = \App\Menu::where('name','admin')->first();
    if($menu){
        $items = isset($childs)?$childs:$menu->items()->with('childs')->where('parent_id',0)->orderBy('order','asc')->get();
    }
@endphp
@if(isset($items))
    @if(isset($childs))
        <ul>
    @endif
    @foreach($items as $item)
        @if($item->childs->count() > 0)
            <li class="with-sub">
                <a href="#" target="{{ $item->target }}" class="waves-effect waves-light">
                    <span class="s-caret"><i class="fa fa-angle-down"></i></span>
                    <span class="s-icon"><i class="{{ $item->icon_class }}"></i></span>
                    <span class="s-text">{{ $item->title }}</span>
                </a>
                @include('layouts.items',['childs'=>$item->childs])
            </li>
        @else
            <li>
                <a href="{{ empty($item->url)?route($item->route):$item->url }}" target="{{ $item->target }}" class="waves-effect waves-light">
                    <span class="s-icon"><i class="{{ $item->icon_class }}"></i></span>
                    <span class="s-text">{{ $item->title }}</span>
                </a>
            </li>
        @endif
    @endforeach
    @if(isset($childs))
        </ul>
    @endif
@endif
