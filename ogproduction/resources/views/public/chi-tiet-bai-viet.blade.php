<meta property="og:title" content="{{$post->title}}">
<meta property="og:image" content="{{asset($post->image_path)}}">
<meta property="og:type" content="article">
<meta property="og:site_name" content="OGPRODUCTION">
<meta property="og:locale" content="vi_VN">
@extends('public.layouts.app')
    @section('title', $post->title )

    @section('wrapper')
    </br></br></br></br>
    <div id="page_content_wrapper" class="blog_wrapper">
        <center><h1>{{$post->title}}</h1></center>

        <hr class="double">

        <div class="social_share_button_wrapper">

                <div class="social_post_view">
                    <span class="units">Date:</span>&nbsp;<span class="units">{{$post->created_at->format('d/m/Y') }}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="units">Author:</span>&nbsp;<span class="units">{{$post->username}}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!-- <span class="view_number">{{$post->view}}</span>&nbsp;<span class="units">Views</span> -->
                </div>
                <ul>
                    <li><div class='fb-like' data-action='like' data-href='' data-layout='button_count' data-share='true' data-show-faces='false' data-width='520'/>
                    </li>
                    <li>
                        <a class="twitter_share" title="Tweet it" target="_blank" href="https://twitter.com/intent/tweet?original_referer={{url()->current()}}">Tweet it</a>
                    </li>
                    <li>
                        <a class="google_share" title="Google+" target="_blank" href="https://plus.google.com/share?url={{url()->current()}}">Google+</a>
                    </li>
                </ul>
                

        </div>
        
        <hr class="double">
        <div>
            <div class="jarallax" data-jarallax-video="{{$post->video_path}}">
        </div>
        </div>
        <div class="inner">
            {!!$post->body!!}
        </div>

        <div class="fb-comments" data-href="{{url()->current()}}" data-numposts="5"></div>

        <!-- Facebook JavaScript SDK -->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=231399680817795";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!-- End Facebook JavaScript SDK -->

        <!-- Your share button code -->

    </div>
    <!-- 'Bước 2' -->
    <div id="fb-root"></div>
    <!-- 'Bước 3' -->

    <hr class="double">
    @include('public.home.posts')

    @include('public.layouts.footer')
@stop