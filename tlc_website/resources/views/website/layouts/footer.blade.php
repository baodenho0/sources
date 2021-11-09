@php
$contact = \App\Contact::first();
$logo = \App\Logo::first();
$post = \App\Post::orderBy('id','desc')->take(3)->get();
@endphp

<footer>
   <div class="financity-footer-wrapper ">
      <div class="financity-footer-container financity-container clearfix">
         <div class="financity-footer-column financity-item-pdlr financity-column-20">
            <div id="text-2" class="widget widget_text financity-widget">
               <div class="textwidget">
                  <p><img src="{{loadImage($logo->image)}}" alt=""></p>
                  <p><i class="fa fa-location-arrow" style="font-size: 16px ;color: #ffffff ;margin-right: 10px ;"></i>{{$contact->address ?? null}}<br>
                     <span class="gdlr-core-space-shortcode" style="margin-top: 10px ;"></span> <i class="fa fa-phone" style="font-size: 16px ;color: #ffffff ;margin-right: 10px ;"></i>{{$contact->phone ?? null}}<br>
                     <span class="gdlr-core-space-shortcode" style="margin-top: 10px ;"></span> <i class="fa fa-envelope-open-o" style="font-size: 16px ;color: #ffffff ;margin-right: 10px ;"></i> {{$contact->email ?? null}}
                  </p>
               </div>
            </div>
         </div>
         <div class="financity-footer-column financity-item-pdlr financity-column-20">
            <div id="gdlr-core-recent-post-widget-3" class="widget widget_gdlr-core-recent-post-widget financity-widget">
                <h3 class="financity-widget-title">Liên Kết</h3>
                <table>
                    <tr style="background: transparent;">
                        <td>
                            <a target="_blank" href="{{$contact->facebook_link}}">
                                <img style="width: 80px" src="/fb.png">
                            </a>
                        </td>
                        <td>
                            <a target="_blank" href="{{$contact->youtube_link}}">
                                <img style="width: 80px" src="/yt.png">
                            </a>
                        </td>
                        <td>
                            <a target="_blank" href="{{$contact->zalo_link}}">
                                <img style="width: 80px" src="/zl.png">
                            </a>
                        </td>
                    </tr>
                </table>
                   
               
               <!-- <h3 class="financity-widget-title">Tin Mới</h3>
               <div class="gdlr-core-recent-post-widget-wrap gdlr-core-style-2">
                  @foreach ($post as $element)
                     
                  
                  <div class="gdlr-core-recent-post-widget clearfix">
                     <div class="gdlr-core-recent-post-widget-content">
                        <div class="gdlr-core-recent-post-widget-title"><a href="{{ route('newsandevents.detail', $element->slug) }}">{{$element->title}}</a></div>
                        <div class="gdlr-core-recent-post-widget-info"><span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date"><span class="gdlr-core-head"><i class="icon_clock_alt"></i></span><a href="{{ route('newsandevents.detail', $element->slug) }}">{{formatShowDate($element->created_at)}}</a></span></div>
                     </div>
                  </div>
                  @endforeach
               </div> -->
            </div>
         </div>
         <!-- <div class="financity-footer-column financity-item-pdlr financity-column-15">
            <div id="nav_menu-1" class="widget widget_nav_menu financity-widget">
               <h3 class="financity-widget-title">Xem Thêm</h3>
               <div class="menu-useful-links-container">
                  <ul id="menu-useful-links" class="menu">
                     <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5507"><a href="https://demo.goodlayers.com/financity/demo3/about-us/">About Us</a></li>
                     <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5506"><a href="https://demo.goodlayers.com/financity/demo3/about-our-team/">Our Team</a></li>
                     <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5512"><a href="https://demo.goodlayers.com/financity/demo3/services/">Our Services</a></li>
                     <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5508"><a href="https://demo.goodlayers.com/financity/demo3/blog-3-columns-with-frame-post-format/">News</a></li>
                     <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5509"><a href="https://demo.goodlayers.com/financity/demo3/career/">Career</a></li>
                  </ul>
               </div>
            </div>
         </div> -->
         <div class="financity-footer-column financity-item-pdlr financity-column-20">
            <div id="text-4" class="widget widget_text financity-widget">
               <h3 class="financity-widget-title">Liên Hệ</h3>
               <div class="textwidget">
                     <div class="screen-reader-response" role="alert" aria-live="polite"></div>
                     <form action="{{ route('website.contact.post') }}" method="post">
                        @csrf
                        <div class="gdlr-core-input-wrap gdlr-core-small gdlr-core-full-width gdlr-core-with-column gdlr-core-no-border">
                           <div class="gdlr-core-column-60"><span class="wpcf7-form-control-wrap your-name">
                              <input required="" type="text" name="name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên*">
                           </span></div>
                           <div class="clear"></div>
                           <div class="gdlr-core-column-60"><span class="wpcf7-form-control-wrap your-phone"><input required="" type="number" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required " aria-required="true" aria-invalid="false" placeholder="Phone*"></span></div>
                           <div class="clear"></div>
                           <div class="gdlr-core-column-60"><span class="wpcf7-form-control-wrap your-phone"><input required="" type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required " aria-required="true" aria-invalid="false" placeholder="Email*"></span></div>
                           <div class="clear"></div>
                           <div class="gdlr-core-column-60"><span class="wpcf7-form-control-wrap your-message">
                            <input required="" type="text" name="description" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required " aria-required="true" aria-invalid="false" placeholder="CMND*"></span></div>
                           <div class="gdlr-core-column-60 gdlr-core-left-align"><input type="submit" value="Gửi" class="wpcf7-form-control wpcf7-submit gdlr-core-small"><span class="ajax-loader"></span></div>
                        </div>
                     </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="financity-copyright-wrapper">
      <div class="financity-copyright-container financity-container clearfix">
         <div class="financity-copyright-left financity-item-pdlr">Copyright 2020, All Right Reserved</div>
         <!-- <div class="financity-copyright-right financity-item-pdlr"><a href="#" target="_self"><i class="fa fa-facebook" style="font-size: 16px ;color: #ffffff ;margin-left: 17px ;"></i></a> <a href="#" target="_self"><i class="fa fa-twitter" style="font-size: 16px ;color: #ffffff ;margin-left: 17px ;"></i></a> <a href="#" target="_self"><i class="fa fa-linkedin" style="font-size: 16px ;color: #ffffff ;margin-left: 17px ;"></i></a> <a href="#" target="_self"><i class="fa fa-google-plus" style="font-size: 16px ;color: #ffffff ;margin-left: 17px ;"></i></a> <a href="#" target="_self"><i class="fa fa-instagram" style="font-size: 16px ;color: #ffffff ;margin-left: 17px ;"></i></a> </div> -->
      </div>
   </div>
</footer>



@section("scripts")  
 
@endsection
