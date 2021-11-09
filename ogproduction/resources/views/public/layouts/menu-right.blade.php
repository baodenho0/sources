@php
    $menu = \App\Menu::where('name','master')->first();
    $items = isset($childs)?$childs:$menu->items()->with('childs')->where('parent_id',0)->orderBy('order','asc')->get();
    $items = collect($items);
    $items = $items->chunk(ceil(sizeof($items)/2));
    $itemsRight = $items->get(1);
@endphp

@if(isset($itemsRight))
    <ul id="main_menu" class="nav">
        @if(isset($childs))
            <ul class="sub-menu">
                @endif
                @foreach($itemsRight as $item)
                    @if($item->childs->count() > 0)
                        <li class="menu-item arrow">
                            <a target="{{ $item->target }}" href="#">{{ $item->title }}</a>
                            @include('layouts.items',['childs'=>$item->childs])
                        </li>
                    @else
                        <li class="megamenu col4 menu-item">
                            <a href="{{ empty($item->url)?route($item->route):asset($item->url) }}" target="{{ $item->target }}">{{ $item->title }}</a>
                        </li>
                    @endif
                @endforeach
                @if(isset($childs))
            </ul>
        @endif
    </ul>
@endif