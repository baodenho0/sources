@extends('layouts.app')
@section('title','Bộ sưu tập - '.$gallery->title)

@section('customCSS')
    <link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/owl.carousel/assets/owl.theme.default.min.css') }}">

@endsection

@section('content')
    <div class="box box-block bg-white clearfix">
        <div class="mb-1">
            <a href="{{ route('galleries.index') }}" class="btn btn-primary btn-rounded">Quay lại</a>
            <a href="{{ route('galleries.images.create',$gallery->id) }}" class="btn btn-success btn-rounded">Thêm mới ảnh</a>
        </div>
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">{{ $gallery->title }}</h4>
                <div class="owl-carousel mt-5">
                    @foreach($gallery->images as $image)
                        <div class="item"><img src="{{ asset($image->url) }}"></div>
                    @endforeach
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Hình ảnh</th>
                                <th>Thứ tự</th>
                                <th>Ngày thêm</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($gallery->images as $image)
                            <tr>
                                <td>{{ $image->id }}</td>
                                <td class="center-block"><img width="100px" src="{{ asset($image->url) }}" alt="gallery"></td>
                                <td><input type="number" name="index" value="{{$image->index_id}}" onchange="changeIndex('{{$image->id}}',this)"></td>
                                <td>{{ $image->created_at->format('d-m-Y H:s') }}</td>
                                <td>
                                    <button type="button" data-toggle="modal" data-target="#delete" data-href="{{ route('galleries.images.deleteimage',$image->id) }}" data-name="{{ $image->id }}" class="btn btn-danger btn-sm" >
                                        <i class="ti-trash"></i> Xóa
                                    </button>
                                    
                                </td>
                            </tr>
                        @endforeach
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
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
    <script type="text/javascript" src="{{ asset('assets/vendor/owl.carousel/owl.carousel.min.js') }}"></script>
    <script>
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:2
                },
                1000:{
                    items:3
                }
            }
        });
        function changeIndex(id,th)
        {
                  $.ajax({
                    url: '/updateIndex/'+id+"/"+th.value,
                    method: 'GET',
                    data: { _token : '{{ csrf_token() }}' },
                    success: function(rs){
                        if(rs.status === 'success'){
                            toastr.success(rs.message,'Thông báo !');
                            //btn.parent().parent().remove();
                        }else{
                            toastr.error(rs.message,'Lỗi !')
                        }
                    }
                });        
        }
    </script>
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