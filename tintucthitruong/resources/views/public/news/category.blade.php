@extends("public.layouts.master")
@php
$logo = \App\Logo::first();
@endphp
@section("title",$categoryTitle)
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="{{$categoryTitle}} - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($logo->image)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="{{$categoryTitle}}" />
@endsection
@section("styles")
<style>
/*.vc_row .vc_col-sm-4 {
    width: none;
}*/
</style>
@endsection
@section("content")
<div class="theme_page relative">
    <div class="vc_row wpb_row vc_row-fluid page_header vertical_align_table clearfix padding-top-3em">
        <div class="page_header_left">
            <h1 class="page_title" style="padding-top: 20px">{{$categoryTitle}}</h1>
        </div>
        <div class="page_header_right">
           
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
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="wpb_wrapper">
                    <div class="vc_row wpb_row vc_row-fluid " id="list-posts">
                        <?php $i=0 ; ?>
                        @foreach ($category as $element)
                        <div class="vc_col-sm-4 wpb_column vc_column_container col-4-custom col-sm-12-custom">
                            <ul class="blog clearfix">
                                <li class=" post post-329 type-post status-publish format-standard has-post-thumbnail hentry category-science category-sports tag-people tag-sport">
                                    <a class="post_image" href="{{ route('news.detail',$element->post_slug) }}" title="{{$element->post_title}}"><img width="330" height="242" src="{{asset($element->image_path)}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="{{$element->post_title}}" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                    <h2 class="clearfix with_number"><a href="{{ route('news.detail',$element->post_slug) }}" title="{{$element->post_title}}">{{$element->post_title}}</a><a href="{{ route('news.detail',$element->post_slug) }}/#comments" title="17 comments" class="comments_number">{{$element->count_comment}}<span class="arrow_comments"></span></a></h2>
                                    <ul class="post_details">
                                        {{-- <li class="category container-category-5"><a class="category-5" href="http://quanticalabs.com/wp_themes/pressroom/category/science/" title="View all posts filed under SCIENCE">SCIENCE</a></li> --}}
                                        <li class="date">{{$element->created_at_format}}</li>
                                    </ul>
                                    <p>{{$element->description}}</p>
                                </li>
                            </ul>
                        </div>
                        <?php $i++ ; ?>
                        @if($i%3==0)
                        <div class="clearfix"></div>
                        @endif
                        @endforeach
                    </div>
                    <div>
                        {{-- <a title="READ MORE" href="#" class="show_more read_more" page="1"><span class="arrow"></span><span>1</span></a> --}}
                        {{$category->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section("scripts")
<script>
function appendToListPosts(categorySlug, page) {
    jQuery.ajax({
        url: "{{route('news.getPostsByPage')}}",
        data: { categorySlug, page },
        method: "get",
        dataType: "json",
        success: function(data) {
            if (data.status) {
                var html = '';
                for (var i = 0; i < data.data.length; i++) {
                    html += '<div class="vc_col-sm-4 wpb_column vc_column_container vc_column_container_custom col-4-custom">' +
                        '<ul class="blog clearfix">' +
                        '<li class=" post post-329 type-post status-publish format-standard has-post-thumbnail hentry category-science category-sports tag-people tag-sport">' +
                        '<a class="post_image" href="/tin-tuc/' + data.data[i].post_slug + '" title="' + data.data[i].post_title + '"><img width="330" height="242" src="{{ asset('/') }}' + data.data[i].image_path + '" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="' + data.data[i].post_title + '" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>' +
                        '<h2 class="clearfix with_number"><a href="/tin-tuc/' + data.data[i].post_slug + '" title="' + data.data[i].post_title + '">' + data.data[i].post_title + '</a><a href="/tin-tuc/' + data.data[i].post_slug + '#comments" title="17 comments" class="comments_number">17<span class="arrow_comments"></span></a></h2>' +
                        '<ul class="post_details">' +
                        '<li class="date">' + data.data[i].created_at_format + '</li>' +
                        '</ul>' +
                        '<p>' + data.data[i].description + '</p>' +
                        '</li>' +
                        '</ul>' +
                        '</div>';
                }
                jQuery("#list-posts").append(html);
            }
        }
    });
}

jQuery(document).ready(function() {
    var categorySlug = "{{$categorySlug}}";
    // console.log(categorySlug);
    jQuery(".show_more").on("click", function(e) {
        e.preventDefault();
        var page = jQuery(this).attr("page");
        appendToListPosts(categorySlug, page);
        jQuery(this).attr("page", parseInt(page) + 1);
    });

});
</script>
@endsection