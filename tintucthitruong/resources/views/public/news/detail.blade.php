@extends("public.layouts.master")
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="{{$post->post_title}} - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($post->image_path)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="{{$post->description}}" />
@endsection
    @section("title",$post->post_title)
@section("content")
<div class="theme_page relative">
    <div class="clearfix">
        <div class="vc_row wpb_row vc_row-fluid padding-top-3em">
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="wpb_wrapper">
                    <hr class="divider">
                </div>
            </div>
        </div>
        <div class="vc_row wpb_row vc_row-fluid page_margin_top">
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="wpb_wrapper">
                    <div class="single post post-878 type-post status-publish format-standard has-post-thumbnail hentry category-health tag-family tag-food tag-sport">
                        <h1 class="post_title"><a href="" title="{{$post->post_title}}">{{$post->post_title}}</a></h1>
                        <ul class="post_details clearfix">
                            <li class="detail category"><a href="/danh-muc/{{$post->category_slug}}">{{$post->category_title}}</a></li>
                            <li class="detail date">{{$post->created_at_format}}</li>
                            <li class="detail views">{{$post->view}} Views</li>
                            <li class="detail comments scroll_to_comments"><a href="#comments" >{{$post->count_comment}} bình luận</a></li>
                        </ul>
                        <a class="post_image page_margin_top prettyPhoto" href="/{{$post->image_path}}" title="">
                            <img width="690" height="450" src="/{{$post->image_path}}" class="attachment-small-slider-thumb size-small-slider-thumb wp-post-image" alt="" title="" />
                        </a>
                        <div class="post_content page_margin_top_section clearfix">
                            <div class="text">
                                {!!$post->body!!}
                                <a class="read_more page_margin_top scroll_to_comments" href="#comments" ><span class="arrow"></span><span>{{$post->count_comment}} bình luận</span></a>
                            </div>
                        </div>
                    </div>
                    <h4 class="box_header page_margin_top_section">Bài viết cùng chủ đề</h4>
                    <div class="horizontal_carousel_container clearfix page_margin_top">
                        <ul class="blog horizontal_carousel visible-3 autoplay-0 pause_on_hover-1 scroll-1">
                            @foreach ($posts5 as $element)
                            <li class="post">
                                <a href="{{ route('news.detail',$element->slug) }}" class="post_image clearfix"><img width="330" height="242" src="{{ asset($element->image_path) }}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" alt="" title="" sizes="(max-width: 330px) 100vw, 330px" /></a>
                                <h5><a href="{{ route('news.detail',$element->slug) }}" title="Greece&#039;s reform plan backed by creditors">{{$element->title}}</a></h5>
                                <ul class="post_details simple">
                                    {{-- <li class="category container-category-7"><a class="category-7" href="" title="View all posts filed under WORLD">WORLD</a></li> --}}
                                    <li class="date">{{$element->created_at_format}}</li>
                                </ul>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="comment_form_container page_margin_top_section">
                        <h4 class="box_header">
                            Bình luận </h4>
                        <form class=" margin_top_15" id="form-comment" method="post">
                            <fieldset class="vc_col-sm-4 wpb_column vc_column_container">
                                <div class="block">
                                    <input required="" class="text_input width-100" name="name" type="text" value="" placeholder="Tên của bạn *">
                                </div>
                            </fieldset>
                            <fieldset class="vc_col-sm-4 wpb_column vc_column_container">
                                <div class="block">
                                    <input class="text_input width-100" name="email" type="text" value="" placeholder="Email của bạn">
                                </div>
                            </fieldset>
                            <fieldset class="vc_col-sm-4 wpb_column vc_column_container">
                                <div class="block">
                                    <input class="text_input width-100" name="website" type="text" value="" placeholder="Website">
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="block">
                                    <textarea required="" class="margin_top_10 text_input width-100" name="content" placeholder="Nội dung *"></textarea>
                                </div>
                            </fieldset>
                            <div class="margin_top_10">
                                <div class="vc_row wpb_row vc_inner">
                                    <input type="submit" value="ĐĂNG BÌNH LUẬN" class="more active" name="submit">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="comments_list_container clearfix page_margin_top_section">
                        <h4 class="box_header">{{$post->count_comment}} Bình luận</h4>
                        <ul id="comments_list">
                        </ul>
                        <script type="text/javascript">
                        jQuery(document).ready(function($) {
                            $(".comments_list_container .reply_button").click(function(event) {
                                event.preventDefault();
                                var offset = $("#comment_form").offset();
                                $("html, body").animate({ scrollTop: offset.top - 10 }, 400);
                                $("#comment_form [name='comment_parent_id']").val($(this).attr("href").substr(1));
                                $("#cancel_comment").css('display', 'block');
                            });
                            $("#cancel_comment").click(function(event) {
                                event.preventDefault();
                                $(this).css('display', 'none');
                                $("#comment_form [name='comment_parent_id']").val(0);
                            });
                        });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section("scripts")
<script type="text/javascript">
function loadComment(postId) {
    jQuery.ajax({
        url: "{{ route('getCommentByPostId') }}",
        method: "get",
        dataType: "json",
        data: {
            postId,
        },
        success: function(data) {
            if (data.status) {
                var html = "";
                for (var i = 0; i < data.data.length; i++) {
                    html += '<li class="comment even thread-even depth-1 comment clearfix" id="comment-192">' +

                        '<div class="comment_details">' +
                        '<div class="posted_by clearfix">' +
                        '<h5>' +
                        ' <a href="" class="url">' + data.data[i].name + '</a> </h5>' +
                        ' <abbr title="May 02, 2018, 10:02 am" class="timeago">' + data.data[i].created_at_format + '</abbr>' +
                        '</div>' +
                        '<p>' + data.data[i].content + ' </p>' +

                        '</div>' +
                        '</li>';
                }
                jQuery("#comments_list").html(html);
            }
        }
    });
}

function saveComment(formData) {
    var result = null;
    jQuery.ajax({
        url: "{{ route('saveComment') }}",
        async: false,
        method: "post",
        dataType: "json",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function(data) {
            if (data.status) {
                result = 1;
            }
        }
    });
    return result;
}
jQuery(document).ready(function() {
    var postId = "{{$post->post_id}}";
    loadComment(postId);

    jQuery("#form-comment").on("submit", function(e) {
        e.preventDefault();
        var form = jQuery(this)[0];
        var formData = new FormData(form);
        formData.append("postId", postId);
        formData.append("_token", "{{csrf_token()}}");
        var checkSave = saveComment(formData);
        if (checkSave == 1) {
            loadComment(postId);
        }
        jQuery(this)[0].reset();
    });

});
</script>
@endsection