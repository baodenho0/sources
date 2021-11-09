@extends('admin.layouts.app')
@section('title','Edit 3 Bước')
@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.css') }}">
<style>
    .modal-lg{
      max-width: 80%;
    }
  </style>
@stop
@section('content')
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edit Image 3 bước</h6>
        </div>
        <div class="card-body">
            <form role="form" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    
                    <div class="col-lg-4 text-xs-center">
                        <div class="form-group row">
                            <img style="" src="{{loadImage($step->image)}}" class="m-x-auto img-fluid " alt="avatar" />
                            <h6 class="m-t-2">Upload a different photo</h6>
                            <label class="custom-file col-md-8">
                                <span id="choose_file" class="form-control">Chọn hình</span>
                                <input accept="image/*" type="file" id="file" name="image" class="custom-file-input">
                            </label>

                        </div>
                        <div class="form-group row">
                            <label class="col-lg-2 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <a href="{{ route('home') }}" class="btn btn-secondary">Cancel</a>
                                <input type="submit" class="btn btn-primary" value="Save Changes" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 personal-info">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID </th>
                                            <th>Tên</th>
                                            <th>Nội Dung</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>  
                    </div>
                </div>
            </form>
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
                        <h6 class="m-0 font-weight-bold text-primary">Step</h6>
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

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label form-control-label">Description</label>
                                                <div class="col-lg-10">
                                                    <input required="" class="form-control " type="text" name="description" placeholder="Description" />
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
<script src="{{ asset('admin/js/upload_avatar.js') }}"></script>

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
            url: "{{ route('step_description.datatables') }}",
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'name', name: 'name' },
            { data: 'description', name: 'description' },
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
            url: "{{ route('step_description.edit') }}",
            method: 'get',
            dataType: "json",
            data: { id: id },
            success: function(data) {
                if (data.status) {
                    var path = "{{ asset('') }}";
                    $("input[name='name']").val(data.data.name);
                    $("input[name='description']").val(data.data.description);
                    $("#editModal").modal("show");
                }
            },
            error: function() {
                toastr.error('Failed to edit Step Description', 'Error !!');
            },
        });
    });

    $("#form").on("submit", function(e) {
        e.preventDefault();
        var form = $(this)[0];
        var form_data = new FormData(form);
        form_data.append('id', id);
        $.ajax({
            url: "{{ route('step_description.postEdit') }}",
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
                url: "{{ route('step_description.delete') }}",
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
@endsection
