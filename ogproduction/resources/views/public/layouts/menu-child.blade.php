    <ul class="mobile_main_nav">
      @foreach($items as $item)
      @if($item->childs==null || count($item->childs)==0)
      <li class="menu-item"><a href="{{ $item->link}}">{{ $item->title }}</a></li>
      @else
      <li class="with-sub">
       <a href="{{ $item->link}}">{{ $item->title }}</a>
       @include("public.layouts.menu-child", ['items' => $item->childs])
    </li>
    @endif
  </li>
  @endforeach
</ul>