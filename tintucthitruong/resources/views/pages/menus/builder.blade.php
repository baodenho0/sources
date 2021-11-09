@extends('layouts.app')
@section('title','Menus')

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/nestable/nestable.css') }}">
    <style>
        .dd{
            max-width: 100%;
        }
        .dd-button{
            position: absolute;
            top: 0;
            right: 0;
            height: 100%;
            padding: 5px 20px 5px 0px;
        }
    </style>
@endsection

@section('content')
    <div class="box box-block bg-white">
        <h5 class="mb-2">
            <button class="btn btn-success btn-rounded" data-type="add" data-toggle="modal" data-target="#add-items" >Thêm menu item mới</button>
        </h5>
        <div class="row">
            <div class="col-sm-12">
                <div class="dd" id="menuItems" data-href="{{ route('menu-builder.update', request()->route('menuId')) }}">
                    @include('pages.menus.child',['menuItems'=>$menuItems])
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="add-items" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <form id="form-menu-item" data-action-add="{{ route('menu-item.store', request()->route('menuId')) }}">
                        <div class="form-group">
                            {{ csrf_field() }}
                        </div>
                        <div class="form-group">
                            <label for="title">Title of the Menu Item</label>
                            <input type="text" class="form-control" name="title" placeholder="Title...">
                        </div>
                        <div class="form-group">
                            <label for="class-icon">Font Icon class for the Menu Item</label>
                            <input type="text" class="form-control" name="class-icon" placeholder="Icon Class (optional)">
                        </div>
                        <div class="form-group">
                            <label for="link-type">Link type</label>
                            <select name="link-type" class="form-control">
                                <option value="url">Static URL</option>
                                <option value="route">Dynamic Route</option>
                            </select>
                        </div>
                        <div class="form-group" id="link_url">
                            <label for="url">URL</label>
                            <input type="text" class="form-control" name="url" placeholder="URL">
                        </div>
                        <div class="form-group" id="link_route" style="display: none;">
                            <label for="route">Route name</label>
                            <input type="text" class="form-control" name="route" placeholder="Route">
                            <br>
                            <label for="parameters">Route parameters (if any)</label>
                            <textarea rows=2" class="form-control" name="parameters" placeholder="{&quot;key&quot;: &quot;value&quot;}"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="target">Open In</label>
                            <select name="target" class="form-control">
                                <option value="">Same Tab/Window</option>
                                <option value="_blank">New Tab/Window</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-rounded" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade small-modal" tabindex="-1" id="del-items" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="text-xs-center">
                        <div class="cm-icon bg-warning mb-1"><i class="ti-warning"></i></div>
                        <p class="text-muted mb-0"></p>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-xs-6">
                        <button type="button" name="accept" class="btn btn-danger btn-block">
                            OK
                        </button>
                    </div>
                    <div class="col-xs-6">
                        <button type="button" data-dismiss="modal" class="btn btn-secondary btn-block">
                            Hủy
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>




@endsection

@section('customJS')
    <script type="text/javascript" src="{{ asset('assets/vendor/nestable/jquery.nestable.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/customs/menu-builder.js') }}"></script>
@endsection