@extends("public.layouts.master")
@php
$logo = \App\Logo::first();
@endphp
@section("styles")
<style type="text/css">
.border-custom {
    border: 1px solid #f0f0f0;
    padding: 5px;
}
</style>
@endsection
@section("title","Brokers")
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="Brokers - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($logo->image)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="Brokers" />
@endsection
@section("content")
<div class="theme_page relative">
    <div class="vc_row wpb_row vc_row-fluid page_header vertical_align_table clearfix padding-top-3em">
        <div class="page_header_left">
            <h1 class="page_title" style="padding-top: 20px">Brokers</h1>
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
            <div class="wpb_column vc_column_container ">
                <div class="wpb_wrapper">
                    <div class="vc_row wpb_row vc_row-fluid brokers">
                        @foreach ($brokers as $element)
                        <div class="vc_col-sm-4 wpb_column vc_column_container col-4-custom col-sm-12-custom">
                            <ul class="blog clearfix">
                                <li class="border-custom post post-329 type-post status-publish format-standard has-post-thumbnail hentry category-science category-sports tag-people tag-sport">
                                    <a class="post_image" href="{{$element->url}}"><img width="330" height="242" src="{{$element->image  ?? ''}}" class="attachment-blog-post-thumb size-blog-post-thumb wp-post-image" title="" sizes="(max-width: 330px) 100vw, 330px" style="display: block;"></a>
                                    <h2 class="clearfix with_number"><a href="{{$element->url}}">{{$element->name ?? ''}}</a></h2>
                                    <ul class="post_details">
                                        <li class="category "><a class="category-7">Score</a></li>
                                        <li class="date">{{$element->score ?? '0'}}</li>
                                    </ul>
                                    <p>{{$element->description ?? ''}}</p>
                                </li>
                            </ul>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section("scripts")
<script type="text/javascript">
jQuery(document).ready(function() {

});
</script>
@endsection