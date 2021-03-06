<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title') - Admin</title>
    <!-- Custom fonts for this template-->
    <base href="{{ asset('assets') }}/">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="{{ asset('admin-quan-diem/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="{{ asset('admin-quan-diem/css/sb-admin-2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('admin-quan-diem/vendor/toastr/toastr.min.css') }}" rel="stylesheet">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="{{ asset('admin-quan-diem/vendor/bootstrap-select/bootstrap-select.min.css') }}">
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.4.0/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('admin-quan-diem/css/customCSS.css') }}">
    <link rel="stylesheet" href="{{ asset('admin-quan-diem/vendor/loadingModal/jquery.loadingModal.css') }}">
    <!-- datatable css -->
    @yield('style')
</head>

<body id="page-top">
    <span style="display: none;" id="{{Auth::user()->id}}" name="{{Auth::user()->username}}" class="info_user"></span>
    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Sidebar -->
        @include('admin-quan-diem.layouts.__sidebar')
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                @include('admin-quan-diem.layouts.__topbar')
                <!-- End of Topbar -->
                <!-- Begin Page Content -->
                <div class="se-pre-con"></div>
                @yield('content')
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
            <!-- Footer -->
            @include('admin-quan-diem.layouts.__footer')
            <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <script src="{{ asset('admin-quan-diem/js/jquery-3.1.1.slim.min.js') }}"></script>
    <script src="{{ asset('admin-quan-diem/js/tether.min.js') }}"></script>
    {{-- <script src="js/bootstrap.min.js"></script> --}}
    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('admin-quan-diem/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('admin-quan-diem/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- Core plugin JavaScript-->
    <script src="{{ asset('admin-quan-diem/vendor/jquery-easing/jquery.easing.min.js') }}"></script>
    <!-- Custom scripts for all pages-->
    <script src="{{ asset('admin-quan-diem/js/sb-admin-2.min.js') }}"></script>
    <script src="{{ asset('admin-quan-diem/vendor/toastr/toastr.min.js') }}"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="{{ asset('admin-quan-diem/vendor/bootstrap-select/bootstrap-select.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.4.0/js/bootstrap4-toggle.min.js"></script>
    <!-- Page level plugins -->
    <!-- soket io -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/push.js/0.0.11/push.min.js"></script>
    {{-- <script type="text/javascript" src="vendor/socket-io/socket.io.js"></script> --}}
    {{-- --}}
    <script src="{{ asset('admin-quan-diem/vendor/loadingModal/jquery.loadingModal.js') }}"></script>
    <script src="{{ asset('admin-quan-diem/vendor/loadingModal/run.js') }}"></script>
    @yield('script')
    @include('admin-quan-diem.message.message')
</body>

</html>