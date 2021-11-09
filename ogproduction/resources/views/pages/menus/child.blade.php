<ol class="dd-list">
    @foreach($menuItems as $item)
        @if(isset($item->childs) && $item->childs->count() > 0)
            <li class="dd-item dd3-item" data-id="{{ isset($item->id)?$item->id:'' }}">
                <div class="dd-handle dd3-handle"></div>
                <div class="dd3-content">
                    {{ isset($item->title)?$item->title:'' }}
                    <div class="dd-button">
                        <button class="btn btn-warning btn-sm" data-href="{{ route('menu-item.update', $item->id) }}" data-type="edit" data-toggle="modal" data-target="#add-items"><i class="ti-pencil"></i> Sửa</button>
                        <button class="btn btn-danger btn-sm" data-title="{{ $item->title }}" data-href="{{ route('menu-item.destroy', $item->id) }}" data-toggle="modal" data-target="#del-items"><i class="ti-trash"></i> Xóa</button>
                    </div>
                </div>
                @include('pages.menus.child',['menuItems'=>$item->childs])
            </li>
        @else
            <li class="dd-item dd3-item" data-id="{{ isset($item->id)?$item->id:'' }}">
                <div class="dd-handle dd3-handle"></div>
                <div class="dd3-content">
                    {{ isset($item->title)?$item->title:'' }}
                    <div class="dd-button">
                        <button class="btn btn-warning btn-sm" data-href="{{ route('menu-item.update', $item->id) }}" data-type="edit" data-toggle="modal" data-target="#add-items"><i class="ti-pencil"></i> Sửa</button>
                        <button class="btn btn-danger btn-sm" data-title="{{ $item->title }}" data-href="{{ route('menu-item.destroy', $item->id) }}" data-toggle="modal" data-target="#del-items"><i class="ti-trash"></i> Xóa</button>
                    </div>
                </div>
            </li>
        @endif
    @endforeach
</ol>