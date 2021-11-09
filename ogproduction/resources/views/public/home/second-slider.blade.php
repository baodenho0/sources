@php
    $second = \App\Slider::where('name','second')->first();
@endphp
<div  class="one withsmallpadding ppb_content_center_bg withbg parallax" style="background-image: url('{{ asset($second->image_path) }}'); height:200px;" >
    <div class="one_third" style="background:rgba(0,0,0,0.5);color:#ffffff;;padding:10px;" data-stellar-ratio="1.3">
        <h3  style="color:#ffffff;">{{ $second->title }}</h3>
        
        <div class="page_tagline" style="color:#ffffff;">
            {{ $second->description }}
        </div>
        <div class="ppb_header_content">
            <p><a class="button" href="{{ ($second->btn_url)?$second->btn_url:route($second->btn_route) }}">{{ $second->btn_name }}</a></p>
        </div>
    </div>
</div>