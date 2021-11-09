@extends('layouts.app')
@section('title','Bộ sưu tập')

@section('customCSS')

@endsection

@section('content')
    <div class="box box-block bg-white">
        <div class="mb-1">
            <a href="{{ route('galleries.create') }}" class="btn btn-success">Thêm mới bộ sưu tập</a>
        </div>
        <table class="table table-striped table-bordered" id="users">
            <thead>
            <tr>
                <th>ID</th>
                <th>Thể Loại</th>
                <th>Tên bộ sưu tập</th>
                <th>Ảnh bìa</th>
                <th>Hiện Trang Chủ</th>
                <th>Thứ tự</th>
                <th>Ngày tạo</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($galleries as $gallery)
                <tr>
                    <td>{{ $gallery->id }}</td>
                    <td>{{ $gallery->galle->name }}</td>
                    <td>{{ $gallery->title }}</td>
                    <td><img width="200px" src="{{ $gallery->image_path }}" alt=""></td>
                    <td >@if($gallery->show_home==0)
                         Ẩn
                        @else Hiển thị
                        @endif
                    </td>
                    <td>{{ $gallery->index_id }}</td>
                    <td>{{ date('d/m/Y H:i', strtotime($gallery->created_at)) }}</td>
                    <td width="300px">
                        <a href="{{ route('galleries.images.create', $gallery->id) }}" class="btn btn-success btn-sm"><i class="ti-plus"></i> Thêm ảnh</a>
                        <a href="{{ route('galleries.show', $gallery->id) }}" class="btn btn-primary btn-sm"><i class="ti-eye"></i> Xem</a>
                        <a href="{{ route('galleries.edit', $gallery->id) }}" class="btn btn-warning btn-sm"><i class="ti-pencil"></i> Sửa</a>
                        <button type="button" data-toggle="modal" data-target="#delete" data-href="{{ route('galleries.destroy', $gallery->id) }}" data-name="{{ $gallery->title }}" class="btn btn-danger btn-sm" >
                            <i class="ti-trash"></i> Xóa
                        </button>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
    <div class="modal fade small-modal" tabindex="-1" role="dialog" id="delete" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Ban có muốn xóa <strong></strong> ?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOk" data-dismiss="modal" class="btn btn-primary btn-rounded">OK</button>
                    <button type="button" class="btn btn-secondary btn-rounded" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('customJS')
    <script type="text/javascript">
        $('#delete').on('show.bs.modal',function(e){
            var btn = $(e.relatedTarget);
            var name = btn.data('name');
            var href = btn.data('href');
            $(this).find('.modal-body strong').text(name);
            $('#btnOk').off().click(function () {
                $.ajax({
                    url: href,
                    method: 'DELETE',
                    data: { _token : '{{ csrf_token() }}' },
                    success: function(rs){
                        if(rs.status === 'success'){
                            toastr.success(rs.message,'Thông báo !');
                            btn.parent().parent().remove();
                        }else{
                            toastr.error(rs.message,'Lỗi !')
                        }
                    }
                });
            });
        });
       
    </script>
@endsection