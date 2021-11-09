@extends('layouts.app')
@section('title','Bài Viết')
@section('customCSS')
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.carousel.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.theme.default.min.css') }}">
{{--
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> --}}
@endsection
@section('content')
<div class="box box-block bg-white">
    <div class="row">
        <div class="col-sm-8">
            <div class="mb-1">
                <a class="btn btn-success btn-rounded" href="{{url('/admin/brokers/create')}}">Thêm Brokers</a>
            </div>
        </div>
        <div class="col-sm-4 pull-right">
        </div>
    </div>
    <table class="table table-striped table-bordered" id="users">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>URL</th>
                <th>Score</th>
                <th>Mô tả</th>
                <th>Hình ảnh</th>
                <th>Ngày tạo</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($brokers as $value)
            <tr>
                <td>{{$value->id ?? ''}}</td>
                <td>{{$value->name ?? ''}}</td>
                <td>{{$value->url ?? ''}}</td>
                <td>{{$value->score ?? ''}}</td>
                <td>{{$value->description ?? ''}}</td>
                <td width="60px">
                    <img style="width: 50px;height: auto" src="{{asset($value->image)}}" alt="">
                </td>
                <td>{{$value->created_at}}</td>
                <td style="text-align: center;">
                    <a href="{{ route('brokers.edit',$value->id) }}" class="btn btn-warning btn-sm"><i class="ti-pencil"></i> Sửa</a>
                    <a class="btn btn-danger btn-sm" href="" data-toggle="modal" data-target="#delete" data-href="{{ route('brokers.destroy',$value->id) }}"> <i class="ti-trash"></i> Xóa</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $brokers->links() }}
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