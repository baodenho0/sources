@extends('admin.layouts.app')
@section('title','Question and Answer List')
@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.css') }}">
<link href="{{ asset('admin/vendor/summernote/summernote-lite.css') }}" rel="stylesheet">
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
            <h6 class="m-0 font-weight-bold text-primary"><a href="{{ route('questionanswer.add') }}" class="btn btn-primary">Add Q & A</a></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID </th>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Created Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    {{-- <tbody>
                        <tr>
                            <td>Tiger Nixon</td>
                            <td>0123456789</td>
                            <td>admin@dataeglobal.com</td>
                            <td>01/02/1998</td>
                            <td>Director</td>
                            <td>12/05/2019</td>
                            <td>
                                <button type="button" onclick="window.location.href='/user/edit'" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></button>
                                <button type="button" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                    </tbody> --}}
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
                        <h6 class="m-0 font-weight-bold text-primary">Q and A</h6>
                    </div>
                    <div class="card-body">
                        <form role="form" id="editForm" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-lg-12 personal-info">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label form-control-label">Question</label>
                                                <div class="col-lg-10">
                                                    <textarea  class="form-control " type="text" name="question" rows="2" cols="50"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label form-control-label">Answer</label>
                                                <div class="col-lg-10">
                                                    <textarea  class="form-control " type="text" name="answer" rows="4" cols="50"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-2 col-form-label form-control-label"></label>
                                        <div class="col-lg-9">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <input type="submit" class="btn btn-primary" value="Save" />
                                            <input type="hidden" value="" name="id">
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
            url: "{{ route('questionanswer.datatable') }}",
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'question', name: 'question' },
            { data: 'answer', name: 'answer' },
            // { data: 'description', name: 'description' },
            // { data: 'link', name: 'link' },           
            { data: 'created_at', name: 'created_at' },
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
            url: "{{ route('questionanswer.edit') }}",
            method: 'get',
            dataType: "json",
            data: { id: id },
            success: function(data) {
                if (data.status) {
                    var path = "{{ asset('') }}";
                    $("textarea[name='question']").val(data.data.question);
                    $("textarea[name='answer']").val(data.data.answer);
                    // $("input[name='link']").val(data.data.link);
                    // $("textarea[name='description']").text(data.data.description);
                    
                    $("#editModal").modal("show");
                }
            },
            error: function() {
                toastr.error('Failed to edit Q&A', 'Error !!');
            },
        });
    });

    $("#editForm").on("submit", function(e) {
        e.preventDefault();
        var form = $('#editForm')[0];
        var form_data = new FormData(form);
        form_data.append('id', id);
        $.ajax({
            url: "{{ route('questionanswer.postEdit') }}",
            method: "post",
            data: form_data,
            cache: false,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function(data) {
                if (data.status) {
                    $("#editModal").modal("hide");
                    toastr.success("Updated successfully");
                    table.draw();
                }
            },
            error: function() {
                toastr.error("Failed to update");
            }
        });
    });


    $(document).on('click', '.delete', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        if (confirm("Are you sure delete this data?")) {
            $.ajax({
                url: "{{ route('questionanswer.delete') }}",
                method: 'post',
                data: { _token: '{{csrf_token()}}', id: id },
                success: function(data) {
                    if (data) {
                        toastr.success("Deleted successfully");
                        table.draw();
                    }
                },
                error: function() {
                    toastr.error('Failed to delete');
                },
            });
        } else return false;
    });



});

</script>
<script src="{{ asset('admin/js/upload_avatar.js') }}"></script>
<script src="{{ asset('admin/vendor/summernote/summernote-lite.js') }}"></script>
<script>
function Sumnernote() {
    $('#summernote').summernote();
    $('.note-icon-trash').trigger('click');
}

</script>
@stop
