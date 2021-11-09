@php
    $main = \App\Slider::where('name','main')->first();
@endphp
<div  class="one withsmallpadding ppb_header_youtube withbg parallax"  style="background-image: url('{{ asset($main->image_path) }}'); text-align:center;padding:300px 0 300px 0;color:#ffffff;" >
    <div class="overlay_background" style="background:#000000;background:rgb(0,0,0,0.2);background:rgba(0,0,0,0.2);"></div>
    <div class="standard_wrapper">
        <div class="page_content_wrapper">
            <div class="inner">
                <div style="margin:auto;width:70%">
                    <h2 class="ppb_title" style="color:#ffffff;">{{ $main->title }}</h2>
                    <hr class="title_break bold center" style="border-color:#ffffff;"/>
                    <div class="page_tagline" style="color:#ffffff;">{{ $main->description }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>