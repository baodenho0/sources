@extends('layouts.app')
@section('title','categories')
@section('customCSS')
@endsection
@section('content')
<div class="box box-block bg-white">
    <div class="mb-1">
        <a href="{{ route('categories.create') }}" class="btn btn-success">Thêm Danh mục</a>
    </div>
    <table class="table table-striped table-bordered" id="users">
        <thead>
            <tr>
                <th>#</th>
                <th>Tên</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($categories as $categories)
            <tr>
                <td>{{ $categories->id }}</td>
                <td>{{ $categories->title }}</td>
                <td>
                    {{-- <a class="btn btn-primary btn-sm" href="{{ route('categories.show', $categories->id) }}"> <i class="ti-eye"></i> Xem</a> --}}
                    <a class="btn btn-warning btn-sm" href="{{ route('categories.edit', $categories->id) }}"> <i class="ti-pencil"></i> Sửa</a>
                    <a class="btn btn-danger btn-sm" href="" data-toggle="modal" data-target="#delete" data-href="{{ route('categories.destroy',$categories->id) }}"> <i class="ti-trash"></i> Xóa</a>
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
                <button type="button" id="btnOk" data-dismiss="modal" class="btn btn-primary btn-rounded">OK
                </button>
                <button type="button" class="btn btn-secondary btn-rounded" data-dismiss="modal">Hủy</button>
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
    $('#btnOk').click(function() {
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