@extends('layouts.app')
@section('title','Bộ sưu tập')
@section('customCSS')
@endsection
@section('content')
<div class="box box-block bg-white">
    <div class="mb-1">
        <a href="{{ route('portfolios-type.create') }}" class="btn btn-success">Thêm mới loại bộ sưu tập</a>
    </div>
    <table class="table table-striped table-bordered" id="users">
        <thead>
            <tr>
                <th>#</th>
                <th>Tiêu đề</th>
                {{-- <th>Ngày thêm</th> --}}
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($portfolios as $portfolio)
            <tr>
                <td>{{ $portfolio->id }}</td>
                <td>{{ $portfolio->title }}</td>
                {{-- <td>{{ $portfolio->created_at->format('d-m-Y H:i') }}</td> --}}
                <td>
                    {{-- <a class="btn btn-primary btn-sm" href="{{ route('portfolios-type.show', $portfolio->id) }}"> <i class="ti-eye"></i> Xem</a> --}}
                    <a class="btn btn-warning btn-sm" href="{{ route('portfolios-type.edit',$portfolio->id) }}"> <i class="ti-pencil"></i> Sửa</a>
                    <button type="button" data-toggle="modal" data-target="#delete" data-href="{{ route('portfolios-type.destroy',$portfolio->id) }}" class="btn btn-danger btn-sm">
                        <i class="ti-trash"></i> Xóa
                    </button>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <div class="modal fade small-modal" tabindex="-1" role="dialog" id="delete" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Ban có muốn xóa <strong></strong> ?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOk" data-dismiss="modal" class="btn btn-primary btn-rounded">OK
                    </button>
                    <button type="button" class="btn btn-secondary btn-rounded" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('customJS')
<script type="text/javascript">
$('#delete').on('show.bs.modal', function(e) {
    var btn = $(e.relatedTarget);
    var name = btn.data('name');
    var href = btn.data('href');
    $(this).find('.modal-body strong').text(name);
    $('#btnOk').off().click(function() {
        $.ajax({
            url: href,
            method: 'DELETE',
            data: { _token: '{{ csrf_token() }}' },
            success: function(rs) {
                if (rs.status === 'success') {
                    toastr.success(rs.message, 'Thông báo !');
                    btn.parent().parent().remove();
                } else {
                    toastr.error(rs.message, 'Lỗi !')
                }
            }
        });
    });
});
</script>
@endsection