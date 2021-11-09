@extends('admin.layouts.app')
@section('title','Country List')
@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.css') }}">
{{-- <link href="{{ asset('admin/vendor/summernote/summernote-lite.css') }}" rel="stylesheet"> --}}
<style>
    .modal-lg{
      max-width: 80%;
    }
  </style>
@stop
@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">User List</h1>
   </div> -->
    <!-- Content Row -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><a href="{{ route('country.add') }}" class="btn btn-primary">Tạo Country</a></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID </th>
                            <th>Name</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Large modal -->
<div id="editModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="container-fluid">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Country</h6>
                    </div>
                    <div class="card-body">
                        <form role="form" id='form' method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-lg-8 push-lg-4 personal-info">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label form-control-label">Name</label>
                                                <div class="col-lg-10">
                                                    <input required="" class="form-control " type="text" name="name" placeholder="Name" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label form-control-label"></label>
                                        <div class="col-lg-9">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy bỏ</button>
                                            <input type="submit" class="btn btn-primary" value="Lưu" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{ asset('admin/vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
<script>
$(document).ready(function() {
    var id = null;

    table = $("#dataTable").DataTable({
        // dom: 'lifrtp',
        // processing:true,
        serverSide: true,
        ajax: {
            url: "{{ route('country.datatables') }}",
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'name', name: 'name' },
            { data: 'action', name: 'action', orderable: false, searcheble: false },
        ],
        // "fnDrawCallback": function() {
        //     $('.checkbox_type').bootstrapToggle();
        // }
    });

    $(document).on('click', '.edit', function(e) {
        e.preventDefault();
        id = $(this).attr('data-id');
        $.ajax({
            url: "{{ route('country.edit') }}",
            method: 'get',
            dataType: "json",
            data: { id: id },
            success: function(data) {
                if (data.status) {
                    var path = "{{ asset('') }}";
                    $("input[name='name']").val(data.data.name);
                    $("#editModal").modal("show");
                }
            },
            error: function() {
                toastr.error('Failed to edit country', 'Error !!');
            },
        });
    });

    $("#form").on("submit", function(e) {
        e.preventDefault();
        var form = $(this)[0];
        var form_data = new FormData(form);
        form_data.append('id', id);
        $.ajax({
            url: "{{ route('country.postEdit') }}",
            method: "post",
            data: form_data,
            cache: false,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function(data) {
                if (data.status) {
                    $("#editModal").modal("hide");
                    toastr.success("Updated Successfully!");
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Failed to update !");
            }
        });
    });


    $(document).on('click', '.delete', function(e) {
        e.preventDefault();
        id = $(this).attr('data-id');
        if (confirm("Are you sure delete this country?")) {
            $.ajax({
                url: "{{ route('country.delete') }}",
                method: 'post',
                dataType:'json',
                data: { _token: '{{csrf_token()}}', id: id },
                success: function(data) {
                    if (data.status) {
                        toastr.success('Deleted Successfully !!');
                        table.draw();
                    }
                },
                error: function() {
                    toastr.error('Error delete', 'Error !!');
                },
            });
        } else return false;
    });

});

</script>
<script src="{{ asset('admin/vendor/summernote/summernote-lite.js') }}"></script>
<script>

</script>
@stop
