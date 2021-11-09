<div id="footer">
        <ul class="sidebar_widget one">
            <li id="text-2" class="widget widget_text">
                <div class="text-widget">
                    <div style="margin:auto;margin-bottom:20px;text-align: center;">
                        <h6>Hãy giúp chúng tôi<br>
                            Tạo ra những bức ảnh đẹp mắt.
                        </h6>
                    </div>
                </div>
            </li>
            <!-- <li id="grandphotography_social_profiles_posts-9" class="widget Grandphotography_Social_Profiles_Posts">
                <div class="social_wrapper shortcode light small">
                    <ul>
                        <li class="facebook"><a target="_blank" title="Facebook" href="#"><i class="fa fa-facebook-official"></i></a></li>
                        <li class="twitter"><a target="_blank" title="Twitter" href=""><i class="fa fa-twitter"></i></a></li>
                        <li class="pinterest"><a target="_blank" title="Pinterest" href=""><i class="fa fa-pinterest"></i></a></li>
                        <li class="instagram"><a target="_blank" title="Instagram" href=""><i class="fa fa-instagram"></i></a></li>
                        <li class="500px"><a target="_blank" title="500px" href="#"><i class="fa fa-500px"></i></a></li>
                    </ul>
                </div>
            </li> -->
        </ul>
    </div>
    <br class="clear"/>
    <div id="footer_photostream" class="footer_photostream_wrapper ri-grid ri-grid-size-3 visible">
   <ul>
    @php
        $footerphotos = \App\FooterPhoto::orderBy('created_at','asc')->limit(5)->get();
        $contact=\App\Contact::first();
    @endphp
    @foreach($footerphotos as $footerphoto)
      <li style="width: 20%; height: 271px;"><a style="background-image: url({{ asset($footerphoto->image_path) }}); "></a></li>
    @endforeach
   </ul>
</div>
    <div class="footer_bar   ">
        <div class="footer_bar_wrapper ">
            <!-- <div class="menu-footer-menu-container">
                <ul id="footer_menu" class="footer_nav">
                    <li id="menu-item-6469" class="menu-item"><a href="#">Home</a></li>
                </ul>
            </div> -->
            
            <div id="copyright" style="width: 30%" >Trụ Sở: {{ $contact->address }}</div>
            <div id="copyright" style="width: 30%" >{{ $contact->phone }}</div>
            <div id="copyright" style="width: 30%" >Email: {{ $contact->email }}</div>
            <br class="clear"/>
            <a id="toTop" href="javascript:;"><i class="fa fa-angle-up"></i></a>
        </div>
        <div class="footer_bar_wrapper ">
            <div style="margin-left: 40%" id="copyright" >© Designed by <a href="https://likegroup.vn">LIKEGROUP.VN</a></div>
        </div>
    </div>