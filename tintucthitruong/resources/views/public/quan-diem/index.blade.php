@extends("public.layouts.master")
@php
$logo = \App\Logo::first();
@endphp
@section("title","Quan Điểm")
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="Quan Điểm - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($logo->image)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="Quan điểm" />
@endsection
@section("content")
<div class="theme_page relative" style=" padding-top:50px">
    <div class="vc_row wpb_row vc_row-fluid page_header vertical_align_table clearfix page_margin_top">
        <div class="">
            <h1 class="page_title">Quan Điểm</h1>
        </div>
    </div>
    <div class="clearfix">
        <div class="vc_row wpb_row vc_row-fluid">
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="wpb_wrapper">
                    <div class="divider_block clearfix">
                        <hr class="divider first">
                        <hr class="divider subheader_arrow">
                        <hr class="divider last">
                    </div>
                </div>
            </div>
        </div>
        <div class="vc_row wpb_row vc_row-fluid">
            <div class="wpb_column vc_column_container vc_col-sm-8">
                <div class="wpb_wrapper">
                    <div class="vc_row wpb_row vc_row-fluid" id="list-quan-diem">
                    </div>
                    <div class="pagination_container clearfix ajax theme_blog_2_columns_pagination page_margin_top">
                    </div>
                    <div>
                        {{-- <a title="READ MORE" href="#" class="show_more read_more" page="1"><span class="arrow"></span><span>SHOW MORE</span></a> --}}
                        <div>
                            <ul class="pagination">
                                {{-- <li class="page-item disabled"><span class="page-link">«</span></li>
                                <li class="page-item active"><span class="page-link">1</span></li>
                                <li class="page-item"><a class="page-link" href="http://localhost:8000/danh-muc/tin-thi-truong?page=2">2</a></li>
                                <li class="page-item"><a class="page-link" href="http://localhost:8000/danh-muc/tin-thi-truong?page=2" rel="next">»</a></li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wpb_column vc_column_container vc_col-sm-4">
                <h4 class="box_header">Danh Mục Quan Điểm</h4>
                <div class="wpb_wrapper">
                    <div class="menu_quandiem">
                        <ul>
                            {{-- <li><a class="active" href="#">Tất cả</a></li> --}}
                            @foreach ($category as $element)
                            <li><a href="{{ route('quanDiem.getBySlug') }}" data-slug="{{$element->slug}}">{{$element->title}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <h4 class="box_header page_margin_top_section">Top Quan Điểm</h4>
                <ul class="authors rating clearfix">
                    @foreach ($topUser as $element)
                    <li class="single-author">
                        <a class="thumb" href="#"><img src="{{$element->image}}" class="avatar avatar-100 photo" height="100" width="100"><span class="count_post number animated_element progress odometer odometer-theme-default" data-value="{{$element->count_post}}">
                                <div class="odometer-inside"><span class="odometer-digit"><span class="odometer-digit-spacer">{{$element->count_post}}</span><span class="odometer-digit-inner"><span class="odometer-ribbon"><span class="odometer-ribbon-inner"><span class="odometer-value">{{$element->count_post}}</span></span>
                                            </span>
                                        </span>
                                    </span>
                                </div>
                            </span>
                            <div class="value_bar_container" style="height: 100px;">
                                <div class="value_bar animated_element duration-2000 animation-height height" style="animation-duration: 2000ms; animation-delay: 0ms; transition-delay: 0ms;"></div>
                            </div>
                        </a>
                        <div class="details">
                            <h5><a href="">{{$element->name}}</a></h5>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
@endsection @section("scripts")
<script type="text/javascript">
function getBySlug(slug, page = 0, active = null) {

    jQuery.ajax({
        url: "{{ route('quanDiem.getBySlug') }}",
        method: "get",
        dataType: "json",
        data: { slug, page },
        success: function(data) {
            if (data.status) {
                var html = "";
                for (var i = 0; i < data.data.length; i++) {
                    html += '<div class="vc_col-sm-4 wpb_column vc_column_container col-6-custom col-sm-12-custom">' +
                        '<ul class="blog clearfix">' +
                        '<li class=" post post-329 type-post status-publish format-standard has-post-thumbnail hentry category-science category-sports tag-people tag-sport">' +
                        '<a class="post_image" href="/tin-tuc/' + data.data[i].post_slug + '" title="' + data.data[i].post_title + '"><img width="330" height="242" src="{{ asset("") }}' + data.data[i].image_path + '" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="' + data.data[i].post_title + '" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>' +
                        '<h2 class="clearfix with_number"><a href="/tin-tuc/' + data.data[i].post_slug + '" title="' + data.data[i].post_title + '">' + data.data[i].post_title + '</a><a href="tin-tuc/' + data.data[i].post_slug + '/#comments"  class="comments_number">' + data.data[i].count_comment + '<span class="arrow_comments"></span></a></h2>' +
                        '<ul class="post_details">' +
                        '<li class="date">' + data.data[i].created_at_format + '</li>' +
                        '</ul>' +
                        '<p>' + data.data[i].post_title + '</p>' +
                        '</li>' +
                        '</ul>' +
                        '</div>';
                }
                // if (!page) {
                //     jQuery("#list-quan-diem").html(html);
                // } else {
                //     jQuery("#list-quan-diem").append(html);
                // }
                jQuery("#list-quan-diem").html(html);

                var pageLoad = "";
                var valuePage = "";
                for (var i = 1; i <= data.totalPage; i++) {
                    // console.log(active);
                    // console.log(i);
                    // if (active == null) {
                    //     if (i == 1) active = "active";
                    // }
                    checkActive = page;
                    if (checkActive + 1 == i) {
                        console.log(checkActive);
                        active = "active";
                    } else {
                        active = "";
                    }
                    // } else {
                    //     if(i == page){
                    //         active = "active";
                    //     }
                    // }
                    valuePage += "<li class=\"page-item btn-page " + active + "  \"><a class=\"page-link \" href=\"#\">" + i + "</a></li>";
                }
                pageLoad += "<li class=\"page-item disabled\"><span class=\"page-link pre\">«</span></li>" +
                    valuePage +
                    "<li class=\"page-item disabled\"><span class=\"page-link next\"  rel=\"next\">»</span></li>";

                jQuery(".pagination").html(valuePage);
            }
        }
    });


}
jQuery(document).ready(function() {
    var slug = null;
    jQuery(".menu_quandiem ul li a").on("click", function(e) {
        e.preventDefault();

        slug = jQuery(this).attr("data-slug");

        getBySlug(slug);

        jQuery(".menu_quandiem ul li").find("a.active").removeClass("active");
        jQuery(this).addClass("active");

        jQuery(".show_more").attr("page", 1);
    });

    // jQuery(".show_more").on("click", function(e) {
    //     e.preventDefault();
    //     var page = jQuery(this).attr("page");
    //     getBySlug(slug, page);
    //     jQuery(this).attr("page", parseInt(page) + 1);
    // });
    // 

    jQuery(document).on("click", ".btn-page", function(e) {
        // alert('ff');
        e.preventDefault();
        var page = jQuery(this).text();
        page--;
        getBySlug(slug, page, "active");
        // jQuery(this).parent().find(".active").removeClass("active");
        // jQuery(this).addClass("active");

    });


    setTimeout(function() {
        jQuery(".menu_quandiem ul li:first a").trigger("click");
    }, 500);

    jQuery(".count_post").each(function(index) {
        var dataValue = jQuery(this).attr("data-value");
        jQuery(this).find(".odometer-value").text(dataValue);
    });

});
</script>
@endsection