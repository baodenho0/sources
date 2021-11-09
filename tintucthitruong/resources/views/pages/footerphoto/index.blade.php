@extends('layouts.app')
@section('title','Ảnh Cuối Trang')

@section('customCSS')
@endsection

@section('content')
    <div class="box box-block bg-white">
        <div class="mb-1">
            <a href="{{ route('footerphoto.create') }}" class="btn btn-success">Thêm mới Ảnh Cuối Trang</a>
        </div>
        <table class="table table-striped table-bordered" id="footerphoto">
            <thead>
            <tr>
                <th>#</th>
                <th>Hình ảnh</th>
                <th>Ngày thêm</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
                @foreach($footerphotos as $photo)
                    <tr>
                        <td>{{  $photo->id }}</td>
                        <td><img width="200px" src="{{ asset($photo->image_path) }}" alt=""></td>
                        <td>{{  $photo->created_at->format('d-m-Y H:i') }}</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="{{ route('footerphoto.show', $photo->id) }}"> <i class="ti-eye"></i> Xem</a>
                            <a class="btn btn-warning btn-sm" href="{{ route('footerphoto.edit',$photo->id) }}"> <i class="ti-pencil"></i> Sửa</a>
                            
                            <button type="button" data-toggle="modal" data-target="#delete" data-href="{{ route('footerphoto.destroy',$photo->id) }}" data-name="{{ $photo->image_path }}" class="btn btn-danger btn-sm" >
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