@extends('admin.layouts.app')
@section('title','Hợp Tác List')
@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/vendor/datatables/dataTables.bootstrap4.min.css') }}">

@stop
@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Hợp Tác List</h1>
   </div>
    <!-- Content Row -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID </th>
                            <th>Họ</th>
                            <th>Tên</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Country</th>
                            <th>Business</th>
                            <th>Website</th>
                            <th>Agency</th>
                            <th>Customer</th>
                        </tr>
                    </thead>
                </table>
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
            url: "{{ route('hoptacList.datatable') }}",
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'surname', name: 'surname' },
            { data: 'name', name: 'name' },
            { data: 'phone', name: 'phone' },
            { data: 'email', name: 'email' }, 
            { data: 'country', name: 'country' }, 
            { data: 'business', name: 'business' }, 
            { data: 'website', name: 'website' },    
            { data: 'agency', name: 'agency' },  
            { data: 'customer', name: 'customer' },            
            { data: 'created_at', name: 'created_at' },
        ],
        // "fnDrawCallback": function() {
        //     $('.checkbox_type').bootstrapToggle();
        // }
    });



});

</script>

@stop
