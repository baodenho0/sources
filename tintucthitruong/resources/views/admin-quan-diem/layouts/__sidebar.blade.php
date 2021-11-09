<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon">
            <!-- <i class="fas fa-laugh-wink"></i> -->
            <img width="100%" src="/uploads/contact/contact-1574962657.png">
        </div>
        {{-- <div class="sidebar-brand-text mx-3">DEG Management</div> --}}
    </a>
    <li class="nav-item ">
        <a class="nav-link" href="/admin-quan-diem/posts">
            <i class=""></i>
            <span></span>Posts</a>
    </li>
    <li class="nav-item ">
        <a class="nav-link" href="/admin-quan-diem/profile">
            <i class=""></i>
            <span></span>Profile</a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    {{-- @foreach ($menu as $value)
    @if (count($value->childs) == 0)
    <!-- Nav Item - Dashboard -->
    <li class="nav-item ">
        <a class="nav-link" href="{{$value->url}}" target="{{$value->target}}">
            <i class="{{$value->class_icon}}"></i>
            <span>{{$value->title}}</span></a>
    </li>
    @else --}}
    <!-- Divider -->
    {{--
    <hr class="sidebar-divider">
    --}}
    <!-- Heading -->
    <!-- Nav Item - Pages Collapse Menu -->
    {{-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse{{$value->id}}" aria-expanded="true" aria-controls="collapse{{$value->id}}">
            <i class="{{$value->class_icon}}"></i>
            <span>{{$value->title}}</span>
        </a>
        <div id="collapse{{$value->id}}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                @foreach ($value->childs as $element)
                <a class="collapse-item" href="{{$element->url}}" target="{{$value->target}}">{{$element->title}}</a>
                @endforeach
            </div>
        </div>
    </li> --}}
    {{-- @endif --}}
    {{-- @endforeach --}}
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>