@extends('admin-quan-diem.layouts.app')
@section('title','Bài Viết')
@section('style')
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.carousel.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.theme.default.min.css') }}">
{{--
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> --}}
{{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> --}}
@endsection
@section('content')
<div class="box box-block bg-white">
    <div class="row">
        <div class="col-sm-8">
            <div class="mb-1">
                <a class="btn btn-success btn-rounded" href="{{ route('AdminQuanDiem.posts.create') }}">Thêm Bài Viết</a>
            </div>
        </div>
    </div>
    <table class="table table-striped table-bordered" id="users">
        <thead>
            <tr>
                <th>ID</th>
                <th>Danh Mục</th>
                <th>Tiêu Đề</th>
                <th>Lượt xem</th>
                <th>Hình ảnh</th>
                <th>Ngày tạo</th>
                <th>Trạng Thái</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($posts as $post)
            <tr>
                <td>{{$post->id ?? ''}}</td>
                <td>{{$post->catg->title ?? ''}}</td>
                <td>{{$post->title ?? ''}}</td>
                <td>{{$post->view ?? ''}}</td>
                <td width="60px">
                    <img style="width: 50px;height: auto" src="{{asset($post->image_path)}}" alt="">
                </td>
                <td>{{$post->created_at}}</td>
                {{--<td>{{$post->status==0?"Hiển thị":"Không hiển thị"}}</td>--}}
                <td>
                    @if($post->status==0)
                    Hiển thị
                    @elseif($post->status==1)
                    Không hiển thị
                    @else
                    Chờ duyệt
                    @endif
                </td>
                <td style="text-align: center;">
                    <a href="{{ route('AdminQuanDiem.posts.edit',$post->id) }}" class="btn btn-warning btn-sm"><i class="ti-pencil"></i> Sửa</a>
                    <button type="button" data-toggle="modal" data-target="#delete" data-href="{{ route('AdminQuanDiem.posts.delete',$post->id) }}" class="btn btn-danger btn-sm">
                        <i class="ti-trash"></i> Xóa
                    </button>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $posts->links() }}
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
@section('script')
<script type="text/javascript">
$('#delete').on('show.bs.modal', function(e) {
    var btn = $(e.relatedTarget);
    var name = btn.data('name');
    var href = btn.data('href');
    // alert(href);
    $(this).find('.modal-body strong').text(name);
    $('#btnOk').off().click(function() {
        $.ajax({
            url: href,
            method: 'POST',
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