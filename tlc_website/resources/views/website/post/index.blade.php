@extends("website.layouts.master")
@section("title",'Trang Chủ')
@section("styles")
<style>
.pagination ul {
    list-style: none;
}

.pagination li {
    float: left;
}

</style>
@endsection
@section("content")
<div class="financity-page-title-wrap  financity-style-custom financity-left-align" style="background-image: url(tlc/images/single-blog-title.jpg); background-size: cover; background-position: center center; transform: translate(0px, -41.0859px); z-index: -2" data-parallax-speed="0.3">
    <div class="financity-header-transparent-substitute"></div>
    <div class="financity-page-title-overlay"></div>
    <div class="financity-page-title-container financity-container">
        <div class="financity-page-title-content financity-item-pdlr">
            <h1 class="financity-page-title">Tin Tức & Sự Kiện</h1>
            {{-- <div class="financity-page-caption">Market rout presents opportunities in forex investment</div> --}}
        </div>
    </div>
</div>
<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="financity-content-container financity-container">
        <div class=" financity-sidebar-wrap clearfix financity-line-height-0 financity-sidebar-style-right">
            <div class=" financity-sidebar-center financity-column-40 financity-line-height">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-section">
                        <div class="gdlr-core-pbf-section-container gdlr-core-container clearfix">
                            <div class="gdlr-core-pbf-element">
                                <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-full" style="padding-bottom: 40px ;">
                                    <div class="gdlr-core-blog-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                        @foreach ($post as $element)
                                        <div class="gdlr-core-item-list gdlr-core-blog-full  gdlr-core-item-mglr gdlr-core-style-left">
                                            <div class="gdlr-core-blog-thumbnail gdlr-core-media-image  gdlr-core-opacity-on-hover gdlr-core-zoom-on-hover"><a href="{{ route('newsandevents.detail', $element->slug) }}"><img src="{{loadImage($element->image)}}" alt="" width="900" height="500" title="vi19"></a></div>
                                            <div class="gdlr-core-blog-full-head clearfix">
                                                <div class="gdlr-core-blog-full-head-right">
                                                    <h3 class="gdlr-core-blog-title gdlr-core-skin-title" style="font-size: 38px ;font-weight: 600 ;letter-spacing: 0px ;"><a href="{{ route('newsandevents.detail', $element->slug) }}">{{$element->title}}</a></h3>
                                                    <div class="gdlr-core-blog-info-wrapper gdlr-core-skin-divider"><span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date"><span class="gdlr-core-head"><i class="icon_clock_alt"></i></span><a>{{formatShowDate($element->created_at)}}</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-blog-content">{{$element->short_description}}<div class="clear"></div><a class="gdlr-core-excerpt-read-more gdlr-core-button gdlr-core-rectangle" href="{{ route('newsandevents.detail', $element->slug) }}">Read More</a></div>
                                        </div>
                                        @endforeach
                                    </div>
                                    <div class="pagination gdlr-core-pagination  gdlr-core-style-circle gdlr-core-left-align gdlr-core-item-pdlr">
                                        {{$post->links()}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" financity-sidebar-right financity-column-20 financity-line-height financity-line-height">
                <div class="financity-sidebar-area financity-item-pdlr">
                    <div id="gdlr-core-recent-post-widget-4" class="widget widget_gdlr-core-recent-post-widget financity-widget">
                        <h3 class="financity-widget-title">Recent News</h3>
                        <div class="gdlr-core-recent-post-widget-wrap gdlr-core-style-1">
                            @foreach ($new as $element)
                            <div class="gdlr-core-recent-post-widget clearfix">
                                <div class="gdlr-core-recent-post-widget-content">
                                    <div class="gdlr-core-recent-post-widget-title"><a href="{{ route('newsandevents.detail', $element->slug) }}">{{$element->title}}</a></div>
                                    <div class="gdlr-core-recent-post-widget-info"><span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date"><span class="gdlr-core-head"><i class="icon_clock_alt"></i></span><a href="{{ route('newsandevents.detail', $element->slug) }}">{{formatShowDate($element->created_at)}}</a></span>
                                        {{-- <span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-author"><span class="gdlr-core-head"><i class="icon_documents_alt"></i></span><a href="https://www.tlcglobal.asia/author/ericoye/" title="Posts by TLC PUBLICITY" rel="author">TLC PUBLICITY</a> --}}
                                    </span>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
