@extends("public.layouts.master")
@php
$logo = \App\Logo::first();
@endphp
@section("title","Trang Chủ")
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="Trang Chủ - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($logo->image)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="Trading Intelligence" />
@endsection
@section("content")
<div class="theme_page relative">
    <div class="clearfix">
        <div class="vc_row wpb_row vc_row-fluid ">
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="wpb_wrapper wpb_column vc_column_container vc_col-sm-12">
                    {{-- <div class="caroufredsel_wrapper caroufredsel_wrapper_slider">
                        <ul class="slider slider id-slider autoplay-0 interval-5000 pause_on_hover-1">
                            @foreach ($slide as $element)
                            <li class="slide">
                                <img width="1250" height="550" src="{{$element->image_path}}" class="attachment-slider-thumb size-slider-thumb wp-post-image" alt="HOME" title="" sizes="(max-width: 1250px) 100vw, 1250px" />
                                <div class="slider_content_box">
                                    <ul class="post_details simple">
                                        <li class="category">
                                            <a class="category-7" href="" title="">WORLD</a>
                                        </li>
                                        <li class="date">Feb 25, 2015</li>
                                    </ul>
                                    <h2>
                                        <a href="" title="">{{$element->title}}</a>
                                    </h2>
                                    <p class="clearfix">{{$element->description}}</p>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div> --}}
                    {{-- <div id="slider" class="slider_posts_list_container"></div> --}}
                    <div class="news_home_hide_mobile">
                        <div class="vc_row wpb_row vc_row-fluid margin-bottom-2em">
                            @for ($i = 0; $i < 2; $i++) @isset($tintuc5[$i]) <div class=" vc_col-sm-6 wpb_column vc_column_container">
                                <ul class="blog clearfix">
                                    <li style=" margin-top: 60px;" class=" width-100 post post-476 type-post status-publish format-standard has-post-thumbnail hentry category-world tag-education tag-people"><a class="post_image" href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title="">
                                            <img width="330" height="242" src="{{$tintuc5[$i]['image_path']}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                        <h2 class="clearfix with_number"><a style="width:90%" href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title="">{{$tintuc5[$i]['title']}}</a><a href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}/#comments" title="" class="comments_number">{{$tintuc5[$i]['count_comment'] ?? 0}}<span class="arrow_comments"></span></a></h2>
                                        <ul class="post_details simple">
                                            <li class="category container-category-3"><a class="category-3" href="/danh-muc/{{$tintuc5[$i]['category_slug']}}" title="">{{$tintuc5[$i]['category_title']}}</a></li>
                                            <li class="date">{{$tintuc5[$i]['created_at']}}</li>
                                        </ul>
                                    </li>
                                </ul>
                        </div>
                        @endisset
                        @endfor
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid">
                        @for ($i = 2; $i < 5; $i++) @isset($tintuc5[$i]) <div class="vc_col-sm-4 wpb_column vc_column_container">
                            <ul class="blog three_columns clearfix">
                                <li class=" post post-332 type-post status-publish format-standard has-post-thumbnail hentry category-lifestyle category-world tag-family tag-people"><a class="post_image" href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title=""><img width="330" height="242" src="{{$tintuc5[$i]['image_path']}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                    <h2 class="clearfix"><a href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title="">{{$tintuc5[$i]['title']}}</a></h2>
                                    <ul class="post_details simple">
                                        <li class="category container-category-3"><a class="category-3" href="/danh-muc/{{$tintuc5[$i]['category_slug']}}" title="">{{$tintuc5[$i]['category_title']}}</a></li>
                                        <li class="date">{{$tintuc5[$i]['created_at']}}</li>
                                    </ul>
                                </li>
                            </ul>
                    </div>
                    @endisset
                    @endfor
                </div>
            </div>
            <div class="news_home_show_mobile">
                <div class="vc_row wpb_row vc_row-fluid margin-bottom-2em">
                    <div class=" vc_col-sm-6 wpb_column vc_column_container">
                        <ul class="blog clearfix">
                            <li style=" margin-top: 60px;" class="width-100 post post-476 type-post status-publish format-standard has-post-thumbnail hentry category-world tag-education tag-people"><a class="post_image" href="{{ route('news.detail',$tintuc5[0]["slug"] ?? "") }}" title="">
                                    <img width="330" height="242" src="{{$tintuc5[0]['image_path']}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                <h2 class="clearfix with_number"><a href="{{ route('news.detail',$tintuc5[0]["slug"] ?? "") }}" title="">{{$tintuc5[0]['title']}}</a><a href="{{ route('news.detail',$tintuc5[0]["slug"] ?? "") }}/#comments" title="" class="comments_number">{{$tintuc5[0]['count_comment'] ?? 0}}<span class="arrow_comments"></span></a></h2>
                                <ul class="post_details simple">
                                    <li class="category container-category-3"><a class="category-3" href="" title="">{{$tintuc5[0]['category_title']}}</a></li>
                                    <li class="date">{{$tintuc5[0]['created_at']}}</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="vc_row wpb_row vc_row-fluid">
                    @for ($i = 1; $i < 5; $i++) @isset ($tintuc5[$i]) <div class="news_home_6 vc_col-sm-4 wpb_column vc_column_container">
                        <ul class="blog three_columns clearfix">
                            <li class=" post post-332 type-post status-publish format-standard has-post-thumbnail hentry category-lifestyle category-world tag-family tag-people"><a class="post_image" href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title=""><img width="330" height="242" src="{{$tintuc5[$i]['image_path']}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                <h2 class="clearfix"><a href="{{ route('news.detail',$tintuc5[$i]["slug"] ?? "") }}" title="">{{$tintuc5[$i]['title']}}</a></h2>
                                <ul class="post_details simple">
                                    <li class="category container-category-3"><a class="category-3" href="" title="">{{$tintuc5[$i]['category_title']}}</a></li>
                                    <li class="date">{{$tintuc5[$i]['created_at']}}</li>
                                </ul>
                            </li>
                        </ul>
                </div>
                @if($i==2)
                <div class="clearfix"></div>
                @endif
                @endisset
                @endfor
            </div>
        </div>
        {{-- //////////////////////// --}}
    </div>
</div>
</div>
<div class="vc_row wpb_row vc_row-fluid page_margin_top">
    <div class="wpb_column vc_column_container vc_col-sm-8">
        <div class="wpb_wrapper">
            <h4 class="box_header">{{$tintuc[0]['category_name'] ?? ""}}</h4>
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="vc_col-sm-6 wpb_column vc_column_container">
                    <ul class="blog clearfix">
                        @isset ($tintuc[0]['category_name'])
                        <li class=" post post-878 type-post status-publish format-standard has-post-thumbnail hentry category-health tag-family tag-food tag-sport">
                            <a class="post_image" href="{{ route('news.detail',$tintuc[0]['post'][0]["slug"] ?? "") }}" title="{{$tintuc[0]['post'][0]["title"] ?? ""}}">
                                <img width="330" height="242" src="{{$tintuc[0]['post'][0]["image_path"] ?? ""}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="{{$tintuc[0]['post'][0]["title"] ?? ""}}" sizes="(max-width: 330px) 100vw, 330px" />
                            </a>
                            <h2 class="clearfix with_number">
                                <a href="{{ route('news.detail',$tintuc[0]['post'][0]["slug"] ?? "") }}" title="{{$tintuc[0]['post'][0]["title"] ?? ""}}" title="">{{$tintuc[0]['post'][0]["title"] ?? ""}}</a>
                                <a href="{{ route('news.detail',$tintuc[0]['post'][0]["slug"] ?? "") }}#comments" title="{{$tintuc[0]['post'][0]["title"] ?? ""}}" title="" class="comments_number">{{$tintuc[0]['post'][0]["count_comment"] ?? 0}}
                                    <span class="arrow_comments"></span>
                                </a>
                            </h2>
                            <ul class="post_details">
                                {{-- <li class="category container-category-2"> --}}
                                    {{-- <a class="category-2" href="" title="">HEALTH</a> --}}
                                    {{-- </li> --}}
                                <li class="date">{{$tintuc[0]['post'][0]["created_at"] ?? ""}}</li>
                            </ul>
                            <p>{{$tintuc[0]['post'][0]["description"] ?? ""}}</p>
                            <a title="XEM TIẾP" href="{{ route('news.category',$tintuc[0]['category_slug']) }}" class="read_more">
                                <span class="arrow"></span>
                                <span>XEM TIẾP</span>
                            </a>
                        </li>
                        @endisset
                    </ul>
                </div>
                <div class="vc_col-sm-6 wpb_column vc_column_container">
                    <ul class="blog clearfix small">
                        @for ($i = 1; $i < 5; $i++) @isset ($tintuc[0]['post'][$i]["image_path"]) <li class=" post post-885 type-post status-publish format-standard has-post-thumbnail hentry category-health tag-business tag-family">
                            <a class="post_image" href="{{ route('news.detail',$tintuc[0]['post'][$i]["slug"] ?? "") }}" title="">
                                <img width="100" height="100" src="{{$tintuc[0]['post'][$i]["image_path"] ?? ""}}" class="attachment-pressroom-small-thumb size-pressroom-small-thumb wp-post-image" alt="" title="" sizes="(max-width: 100px) 100vw, 100px" />
                            </a>
                            <div class="post_content">
                                <h5>
                                    <a href="{{ route('news.detail',$tintuc[0]['post'][$i]["slug"] ?? "") }}" title="">{{$tintuc[0]['post'][$i]["title"] ?? ""}}</a>
                                </h5>
                                <ul class="post_details simple">
                                    <li class="date">{{$tintuc[0]['post'][$i]["created_at"] ?? ""}}</li>
                                </ul>
                            </div>
                            </li>
                            @endisset
                            @endfor
                    </ul>
                    <a title="XEM TIẾP" href="{{ route('news.category',$tintuc[0]['category_slug']) }}" class="more page_margin_top">XEM TIẾP</a>
                </div>
            </div>
            {{-- Quang Cao --}}
            <div class="vc_row wpb_row vc_row-fluid page_margin_top_section">
                <div class="vc_col-sm-12 wpb_column vc_column_container">
                    <a href="{{$bannerId1->url}}">
                        <img width="100%" src="{{$bannerId1->image}}" />
                    </a>
                </div>
            </div>
            {{-- Quang Cao --}}
            @for ($i = 1; $i < 7; $i=$i + 2) <div class="vc_row wpb_row vc_inner vc_row-fluid page_margin_top_section">
                @for ($j = $i; $j < $i + 2; $j++) @isset ($tintuc[$j]['category_name'] ) <div class="wpb_column vc_column_container vc_col-sm-6">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <h4 class="box_header ">{{$tintuc[$j]['category_name'] ?? ""}}</h4>
                            <div class="vc_row wpb_row vc_row-fluid">
                                <ul class="blog clearfix big">
                                    <li class=" post post-54 type-post status-publish format-image has-post-thumbnail hentry category-lifestyle tag-education tag-people post_format-post-format-image">
                                        <a class="post_image " href="{{ route('news.detail',$tintuc[$j]['post'][0]["slug"] ?? "") }}" title="">
                                            <img width="330" height="242" src="{{$tintuc[$j]['post'][0]["image_path"] ?? ""}}" class="width-100 attachment-blog-post-thumb size-blog-post-thumb wp-post-image" title="" sizes="(max-width: 330px) 100vw, 330px" />
                                        </a>
                                        <h2 class="clearfix with_number">
                                            <a href="{{ route('news.detail',$tintuc[$j]['post'][0]["slug"] ?? "") }}" title="">{{$tintuc[$j]['post'][0]["title"] ?? ""}}</a>
                                            <a href="" title="" class="comments_number">{{$tintuc[$j]['post'][0]["count_comment"] ?? 0}}
                                                <span class="arrow_comments"></span>
                                            </a>
                                        </h2>
                                        <ul class="post_details">
                                            {{-- <li class="category container-category-3"> --}}
                                                {{-- <a class="category-3" href="" title="">LIFESTYLE</a> --}}
                                                {{-- </li> --}}
                                            <li class="date">{{$tintuc[$j]['post'][0]["created_at"] ?? ""}}</li>
                                        </ul>
                                        <p>{{$tintuc[$j]['post'][0]["description"] ?? ""}}</p>
                                        <a title="XEM TIẾP" href="{{ route('news.category',$tintuc[$j]['category_slug']) }}" class="read_more">
                                            <span class="arrow"></span>
                                            <span>XEM TIẾP</span>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="blog clearfix small">
                                    @for ($post = 1; $post < 4; $post++) @isset ($tintuc[$j]['post'][$post]["title"] ) <li class=" post post-332 type-post status-publish format-standard has-post-thumbnail hentry category-lifestyle category-world tag-family tag-people">
                                        <a class="post_image " href="{{ route('news.detail',$tintuc[$j]['post'][$post]["slug"] ?? "") }}" title="">
                                            <img width="100" height="100" src="{{$tintuc[$j]['post'][$post]["image_path"] ?? ""}}" class="attachment-pressroom-small-thumb size-pressroom-small-thumb wp-post-image" alt="" title="" sizes="(max-width: 100px) 100vw, 100px" />
                                        </a>
                                        <div class="post_content">
                                            <h5>
                                                <a href="{{ route('news.detail',$tintuc[$j]['post'][$post]["slug"] ?? "") }}" title="">{{$tintuc[$j]['post'][$post]["title"] ?? ""}}</a>
                                            </h5>
                                            <ul class="post_details simple">
                                                {{-- <li class="category container-category-3">
                                                    <a class="category-3" href="" title="">LIFESTYLE</a>
                                                </li> --}}
                                                <li class="date">{{$tintuc[$j]['post'][$post]["created_at"] ?? ""}}</li>
                                            </ul>
                                        </div>
                                        </li>
                                        @endisset
                                        @endfor
                                </ul>
                                <a title="XEM TIẾP" href="{{ route('news.category',$tintuc[$j]['category_slug']) }}" class="more page_margin_top">XEM TIẾP</a>
                            </div>
                        </div>
                    </div>
        </div>
        @endisset
        @endfor
    </div>
    @endfor
    {{-- Quang Cao --}}
    <div class="vc_row wpb_row vc_row-fluid page_margin_top_section">
        <div class="vc_col-sm-12 wpb_column vc_column_container">
            <a href="{{$bannerId2->url}}">
                <img width="100%" src="{{$bannerId2->image}}" />
            </a>
        </div>
    </div>
    {{-- Quang Cao --}}
</div>
</div>
<div class="wpb_column vc_column_container vc_col-sm-4 pr_smart_column">
    <div class="wpb_wrapper">
        <h4 class="box_header">CẬP NHẬT THƯỜNG XUYÊN</h4>
        <div class="vc_row wpb_row vc_row-fluid">
            <ul class="blog clearfix small_margin cap-nhat-thuong-xuyen">
            </ul>
        </div>
        <h4 class="box_header page_margin_top">CHỈ SỐ CHUNG</h4>
        <div class="vc_row wpb_row vc_row-fluid">
            <ul class="blog clearfix small_margin">
                <iframe src="https://ssltsw.forexprostools.com?lang=52&forex=1,2,3,5,7,9,10&commodities=8830,8836,8831,8849,8833,8862,8832&indices=23660,166,172,27,179,170,174&stocks=334,345,346,347,348,349,350&tabs=1,2,3,4" width="100%" height="467"></iframe>
            </ul>
        </div>
        <h4 class="box_header page_margin_top">TIỀN TỆ CHÉO</h4>
        <div class="vc_row wpb_row vc_row-fluid">
            <ul class="blog clearfix small_margin">
                <iframe src="https://vn.widgets.investing.com/live-currency-cross-rates?theme=darkTheme&hideTitle=true" width="100%" height="500" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0"></iframe>
            </ul>
        </div>
        <h4 class="box_header page_margin_top">TIỀN ĐIỆN TỬ</h4>
        <div class="vc_row wpb_row vc_row-fluid">
            <ul class="blog clearfix small_margin">
                <iframe src="https://vn.widgets.investing.com/top-cryptocurrencies?theme=darkTheme&hideTitle=true" width="100%" height="600" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0"></iframe>
            </ul>
        </div>
        <div class="clearfix tabs no_scroll page_margin_top" data-interval="0">
            <ul class="tabs_navigation clearfix">
                <li>
                    <a href="#sidebar-most-read" class="btn-top-view">ĐỌC NHIỀU</a>
                </li>
                <li>
                    <a href="#sidebar-most-commented" class="btn-top-comment">BÌNH LUẬN</a>
                </li>
            </ul>
            <div id="sidebar-most-read" class="wpb_tab">
                <ul class="blog rating clearfix page_margin_top list-top-view">
                    @foreach ($topView as $element)
                    <li class="post">
                        <div class="post_content">
                            <span class="number animated_element" data-value="{{$element->view}}"></span>
                            <h5>
                                <a href="{{ route('news.detail',$element->post_slug) }}">{{$element->post_title}}</a>
                            </h5>
                            <ul class="post_details simple">
                                <li class="category container-category-7">
                                    <a class="category-7" href="{{ route('news.category',$element->category_slug) }}">{{$element->category_title}}</a>
                                </li>
                                <li class="date">{{$element->created_at_format}}</li>
                            </ul>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
            <div id="sidebar-most-commented" class="wpb_tab">
                <ul class="blog rating clearfix page_margin_top list-top-comment">
                    @foreach ($topComment as $element)
                    <li class="post">
                        <div class="post_content">
                            <span class="number animated_element" data-value="{{$element->count_comment}}"></span>
                            <h5>
                                <a href="{{ route('news.detail',$element->post_slug) }}">{{$element->post_title}}</a>
                            </h5>
                            <ul class="post_details simple">
                                <li class="category container-category-4">
                                    <a class="category-4" href="{{ route('news.category',$element->category_slug) }}">{{$element->category_title}}</a>
                                </li>
                                <li class="date">{{$element->created_at_format}}</li>
                            </ul>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <h4 class="box_header page_margin_top">QUAN ĐIỂM</h4>
        <div class="vc_row wpb_row vc_row-fluid">
            <ul class="blog clearfix small">
                @foreach ($quanDiem as $element)
                <li class=" post post-855 type-post status-publish format-standard has-post-thumbnail hentry category-science tag-education tag-people">
                    <a class="post_image" href="{{ route('news.detail',$element->post_slug) }}">
                        <img width="100" height="100" src="{{ asset($element->image_path) }}" class="attachment-pressroom-small-thumb size-pressroom-small-thumb wp-post-image" alt="{{$element->post_title}}" title="{{$element->post_title}}" sizes="(max-width: 100px) 100vw, 100px" />
                    </a>
                    <div class="post_content">
                        <h5 class="clearfix">
                            <a href="{{ route('news.detail',$element->post_slug) }}" title="Nuclear fusion closer to becoming a reality">{{$element->post_title}}</a>
                        </h5>
                        <ul class="post_details simple">
                            <li class="category container-category-5">
                                <a class="category-5" href="{{ route('quanDiem') }}" title="View all posts filed under SCIENCE">{{$element->category_title}}</a>
                            </li>
                            <li class="date">{{$element->created_at_format}}</li>
                        </ul>
                    </div>
                </li>
                @endforeach
            </ul>
        </div>
        <a class="more page_margin_top" href="{{ route('quanDiem') }}" title="MORE FROM SCIENCE">MORE FROM SCIENCE</a>
    </div>
</div>
</div>
</div>
</div>
@endsection
@section("scripts")
<script type="text/javascript">
function getCapNhatThuongXuyen() {

    jQuery.ajax({
        url: "{{ route('getCapNhatThuongXuyen') }}",
        method: "get",
        dataType: "json",
        success: function(data) {
            if (data.status) {
                var html = "";
                for (var i = 0; i < data.data.length; i++) {
                    html += "<div class='capnhatthuongxuyenclearfix capnhatthuongxuyenboder'>" +
                        "<div class='capnhatthuongxuyendate'>" + data.data[i].time + "</div>" +
                        "<div class='capnhatthuongxuyenbody'>" + data.data[i].translate + "</div>" +
                        "</div>";
                }
                jQuery(".cap-nhat-thuong-xuyen").html(html);
            }
        }
    });
}



jQuery(document).ready(function() {
    getCapNhatThuongXuyen();
    setInterval(function() {
        getCapNhatThuongXuyen();
    }, 60000);

});
</script>
@endsection