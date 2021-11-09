<div  class="one withsmallpadding ppb_header " style="text-align:center;padding:60px 0 60px 0;" >
    <div class="standard_wrapper">
        <div class="page_content_wrapper">
            <div class="inner">
                <div style="margin:auto;width:100%">
                    <h2 class="ppb_title" style="">Bài Viết Mới Nhất</h2>
                    <hr class="title_break bold center" style=""/>
                    <div class="page_tagline" style="">Creativity thrives with collaboration<br />
                        The joining of mind to forge something real.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div  class="ppb_blog_slider three_cols one nopadding " >
    <div id="posts" class="slider_wrapper three_cols">
        <div class="flexslider" data-height="350">
            <ul class="slides">
                <li>
                @php
                    $posts = \App\Post::orderBy('id','desc')->limit(3)->get();
                @endphp
                @foreach($posts as $post)
                    <a href="/bai-viet/{{ $post->slug }}">
                        <div class="slider_image three_cols" style="background-image:url({{asset($post->image_path)}});">
                            <div class="slide_post">
                                <div class="slide_post_wrapper">
                                    <h2>{{ $post->title }}</h2>
                                    <hr class="title_break bold"/>
                                    <div class="post_detail single_post">
                                        <span class="post_info_date">
                                        {{ date_format($post->created_at, 'd/m/Y H:i') }}
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                @endforeach
                </li>
            </ul>
        </div>
    </div>
</div>