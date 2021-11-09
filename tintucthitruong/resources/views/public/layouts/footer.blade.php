@php
$contact = \App\Contact::first();
$map = $contact->map ?? "";
$address = $contact->address ?? "";
$introduce = $contact->introduce ?? "";
$phone = $contact->phone ?? "";
$email = $contact->email ?? "";
$image_path = $contact->image_path ?? "";
@endphp
<div class="footer_container">
    <div class="footer clearfix">
        <div class="vc_row wpb_row vc_row-fluid ">
            <div class='vc_col-sm-4 wpb_column vc_column_container'>
                <h4 class='box_header'>Giới thiệu</h4>
                <p class="padding_top_bottom_25">{{$introduce}}</p>
                <div class="vc_row wpb_row vc_row-fluid">
                    
                    <div class="vc_col-sm-12 wpb_column vc_column_container">
                        <h5>Phone & Email</h5>
                        <p>
                            Phone: {{$phone}}
                            <br>Email: {{$email}}
                            <br>
                        </p>
                    </div>
                </div>
                
            </div>
            <div class='vc_col-sm-4 wpb_column vc_column_container'>
                <h4 class='box_header'>Logo</h4>
                <div class="vertical_carousel_container">
                    
					<img class="width-100" src="{{ asset($image_path) }}"/>
                    
                </div>
				<div class="vc_row wpb_row vc_row-fluid">
                    <div class="vc_col-sm-12 wpb_column vc_column_container">
                        <h5>Giờ làm việc</h5>
                        <p>
                            {{$address ?? ''}}
                        </p>
                    </div>
				</div>
				{{--<ul class="social_icons dark page_margin_top clearfix">
                    <li>
                        <a target='_blank' href="" class="social_icon facebook"></a>
                    </li>
                    <li>
                        <a target='_blank' href="" class="social_icon twitter"></a>
                    </li>
                    <li>
                        <a href="mailto:{{$email}}" class="social_icon mail"></a>
                    </li>
                    <li>
                        <a href="#" class="social_icon skype"></a>
                    </li>
                    <li>
                        <a target='_blank' href="" class="social_icon envato"></a>
                    </li>
                    <li>
                        <a href="#" class="social_icon instagram"></a>
                    </li>
                    <li>
                        <a href="#" class="social_icon pinterest"></a>
                    </li>
                </ul>
				--}}
            </div>
            <div class='vc_col-sm-4 wpb_column vc_column_container'>
                <h4 class='box_header'>Map</h4>
                <div class="big horizontal_carousel_container page_margin_top " id="google-map">
                    {!!$map ?? ""!!}
                </div>
            </div>
        </div>
        <div class="vc_row wpb_row vc_row-fluid copyright_row">
            <div class="vc_col-sm-8 wpb_column vc_column_container">Developed by
                <a target="_blank" title="SumIDs" href="http://sumids.com/">SumIDs</a>
            </div>
            <div class="vc_col-sm-4 wpb_column vc_column_container">
                <div class="textwidget">
                    <a class="scroll_top" href="#top" title="Scroll to top">Top</a>
                </div>
            </div>
        </div>
    </div>
</div>