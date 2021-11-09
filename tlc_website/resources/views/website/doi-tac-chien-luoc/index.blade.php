@extends("website.layouts.master")
@section("title",'Đối tác chiến lược')
@section("content")

<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper " style="padding: 200px 0px 200px 0px;" id="gdlr-core-wrapper-1">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url({{$about->image}}); background-size: cover; background-position: center center; height: 452.6px; transform: translate(0px, -32.9906px);" data-parallax-speed="0.2"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                </div>
            </div>
        </div>
       

        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                {!!$about->content!!}
            </div>
        </div>
    </div>
</div>

@endsection