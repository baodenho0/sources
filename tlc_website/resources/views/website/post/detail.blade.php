@extends("website.layouts.master")
@section("title",'Trang Chủ')
@section("styles")
@endsection
@section("content")
<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="financity-blog-title-wrap  financity-style-small" style="background-image: url(../tlc/images/single-blog-title.jpg); background-size: cover; background-position: center center; transform: translate(0px, -41.0859px); z-index: -2" data-parallax-speed="0.3">
        <div class="financity-header-transparent-substitute"></div>
        <div class="financity-blog-title-top-overlay"></div>
        <div class="financity-blog-title-overlay"></div>
        <div class="financity-blog-title-bottom-overlay"></div>
        <div class="financity-blog-title-container financity-container">
            <div class="financity-blog-title-content financity-item-pdlr">
                <header class="financity-single-article-head clearfix">
                    <div class="financity-single-article-head-right">
                        <h1 class="financity-single-article-title">{{$post->title}}</h1>
                        <div class="financity-blog-info-wrapper">
                            <div class="financity-blog-info financity-blog-info-font financity-blog-info-date"><span class="financity-head"><i class="icon_clock_alt"></i></span><a href="https://www.tlcglobal.asia/2019/10/06/">{{formatShowDate($post->created_at)}}</a></div>
                            {{-- <div class="financity-blog-info financity-blog-info-font financity-blog-info-author"><span class="financity-head"><i class="icon_documents_alt"></i></span><a href="https://www.tlcglobal.asia/author/ericoye/" title="Posts by TLC PUBLICITY" rel="author">TLC PUBLICITY</a></div>
                            <div class="financity-blog-info financity-blog-info-font financity-blog-info-category"><span class="financity-head"><i class="icon_folder-alt"></i></span><a href="https://www.tlcglobal.asia/category/news/" rel="tag">NEWS</a></div>
                            <div class="financity-blog-info financity-blog-info-font financity-blog-info-comment-number"><span class="financity-head"><i class="icon_comment_alt"></i></span>0 </div> --}}
                        </div>
                    </div>
                </header>
            </div>
        </div>
    </div>
    <div class="financity-content-container financity-container">
        <div class=" financity-sidebar-wrap clearfix financity-line-height-0 financity-sidebar-style-none">
            <div class=" financity-sidebar-center financity-column-60 financity-line-height">
                <div class="financity-content-wrap financity-item-pdlr clearfix">
                    <div class="financity-content-area" style="text-align: center;">
                        {!!$post->description!!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
