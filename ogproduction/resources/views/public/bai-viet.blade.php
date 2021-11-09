@extends('public.layouts.app')
@section('title','Bài Viết')
@section('wrapper')
<div id="page_content_wrapper" class="blog_wrapper">    
<div class="inner">

	<!-- Begin main content -->
	<div class="inner_wrapper">



		<div class="page_content_wrapper">
			
		</div>
		</br></br></br></br>
		<center><h1>Bài Viết Mới Nhất</h1></center>
		</br></br>
		<div id="blog_grid_wrapper" class="sidebar_content full_width fixed_column">


			@for($i=1; $i <= count($posts) ;$i++)
			<!-- Begin each blog post -->
			<div id="post-4423" class="post_order1 post-4423 post type-post status-publish format-standard has-post-thumbnail hentry category-photography category-travel tag-blog tag-city tag-street tag-street-photography-2">

				<div class="post_wrapper grid_layout">
					<div class="post_img small static">
						<a href="/bai-viet/{{$posts[$i-1]->slug}}">
							<img src="{{asset($posts[$i-1]->image_path)}}" alt="" class="" style="width:960px;height:636px;">
						</a>
					</div>
					<div class="blog_grid_content">
						<div class="post_header grid">
							<h6><a href="/bai-viet/{{$posts[$i-1]->slug}}" title="{{$posts[$i-1]->title}}">{{$posts[$i-1]->title}}</a></h6>
							<div class="post_detail single_post">
								<span class="post_info_date">
									<a href="/bai-viet/{{$posts[$i-1]->slug}}" title="">{{ date_format($posts[$i-1]->created_at, 'd/m/Y H:i') }}</a>
								</span>
							</div>
						</div>
						{!!$posts[$i-1]->description!!}			
						<div class="post_button_wrapper">
							<a class="readmore" href="/bai-viet/{{$posts[$i-1]->slug}}">Đọc Tiếp</a>
						</div>
					</div>
				</div>
			</div>
			@php
			if($i!=0 && $i%3==0)
			{
				echo "<br class=\"clear\">";
			}
			@endphp
			@endfor
			<!-- End each blog post -->
		</div>
	</div>
	<!-- End main content -->
</div>
{{ $posts->render() }}
</div>
@include('public.layouts.footer')
@stop
