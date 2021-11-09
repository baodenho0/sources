@extends('public.layouts.app')
@section('title','Liên Hệ')
@section('wrapper')

   <div class="one withsmallpadding ppb_contact_half_bg withbg parallax " style="background-image: none; background-position: center center; padding: 8% 0px; z-index: 0; " >
      <div class="standard_wrapper">
         <div class="page_content_wrapper">
            <div class="inner">
            	<div style="margin:auto;width:100% ; text-align: center">
            		<h2 class="ppb_title" style="">Liên Hệ</h2>
            	</div>
            </div>
         </div>
      </div>
      <div id="jarallax-container-0" style=" top: 0px; left: 0px;  overflow: hidden;  z-index: 0;">
         <div style=" background-size: 100%; background-repeat: no-repeat; background-image: url({{ $contact->image_path }}); position: fixed; top: 0px; left: 0px; width: 100%; height: 35%; overflow: hidden;  margin-left: 0px;  visibility: visible; "></div>
      </div>
   </div>

   <div class=" " style="font-size:18px;text-align:center;padding:20% 0 60px 0;">
      <div class="standard_wrapper">
         <div class="page_content_wrapper">
          
               <div style="margin:auto;width:100%">
               	  
                  <h2 class="ppb_title" style="">Địa Chỉ Của Chúng Tôi</h2>
                  <div class="ppb_header_content">
                     <p>{{ $contact->address }}<br>
                        {{ $contact->phone}}
                     </p>
                  </div>
               </div>
            
         </div>
      </div>
   </div>
   <div class="map_shortcode_wrapper" id="map" style="width: 100%; height: 600px; position: relative; overflow: hidden;">
      
        <iframe src="https://www.google.com/maps/embed?pb={{ $contact->map }}" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
     
   </div>
@include('public.layouts.footer')
@endsection
