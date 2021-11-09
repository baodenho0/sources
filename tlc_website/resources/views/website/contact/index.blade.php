@extends("website.layouts.master")
@section("title",'Liên Hệ')
@section("styles")
@endsection
@section("content")

<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper " style="padding: 190px 0px 110px 0px;" id="gdlr-core-wrapper-1">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(tlc/images/about-team-bg.jpg); background-size: cover; background-position: center center; height: 491.1px; transform: translate(0px, -41.0859px);" data-parallax-speed="0.3"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8" style="">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                            <div class="gdlr-core-title-item-title-wrap ">
                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 75px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;color: #ffffff ;">Liên Hệ
                                    <span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="gdlr-core-pbf-wrapper " style="padding: 85px 0px 50px 0px;">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #e9e9e9 ;"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first" data-skin="Contact Form White">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js " style="max-width: 760px ;">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap ">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 43px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;">Vui Lòng Để Lại Lời Nhắn
                                                <span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                        <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 19px ;font-style: normal ;">Chúng tôi sẽ liên lạc với bạn sớm nhất.</span>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-divider-item gdlr-core-divider-item-normal gdlr-core-item-pdlr gdlr-core-center-align" style="margin-bottom: 50px ;">
                                        <div class="gdlr-core-divider-container" style="max-width: 40px ;">
                                            <div class="gdlr-core-divider-line gdlr-core-skin-divider" style="border-color: #2d2d2d ;border-bottom-width: 2px ;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-24 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix ">
                                        <ul>
                                            <li class=" gdlr-core-skin-divider gdlr-core-with-hover">
                                                
                                                    <span class="gdlr-core-icon-list-icon-wrap">
                                                        <i class="gdlr-core-icon-list-icon-hover fa fa-location-arrow" style="color: #000000 ;font-size: 15px ;"></i>
                                                        <i class="gdlr-core-icon-list-icon fa fa-location-arrow" style="color: #000000 ;font-size: 15px ;width: 15px ;"></i>
                                                    </span>
                                                    <div class="gdlr-core-icon-list-content-wrap">
                                                        <span class="gdlr-core-icon-list-content" style="color: #282828 ;font-size: 19px ;">Address</span>
                                                        <span class="gdlr-core-icon-list-caption" style="color: #2d5fde ;font-size: 19px ;">{{$contact->address}}</span>
                                                    </div>
                                                
                                            </li>
                                            <li class=" gdlr-core-skin-divider gdlr-core-with-hover">
                                                <a href="mailto:{{$contact->email}}" target="_self">
                                                    <span class="gdlr-core-icon-list-icon-wrap">
                                                        <i class="gdlr-core-icon-list-icon-hover fa fa-phone" style="color: #000000 ;font-size: 15px ;"></i>
                                                        <i class="gdlr-core-icon-list-icon fa fa-phone" style="color: #000000 ;font-size: 15px ;width: 15px ;"></i>
                                                    </span>
                                                    <div class="gdlr-core-icon-list-content-wrap">
                                                        <span class="gdlr-core-icon-list-content" style="color: #282828 ;font-size: 19px ;">Phone</span>
                                                        <span class="gdlr-core-icon-list-caption" style="color: #2d5fde ;font-size: 19px ;">{{$contact->phone}}</span>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class=" gdlr-core-skin-divider gdlr-core-with-hover">
                                                <a href="mailto:{{$contact->email}}" target="_self">
                                                    <span class="gdlr-core-icon-list-icon-wrap">
                                                        <i class="gdlr-core-icon-list-icon-hover fa fa-envelope" style="color: #000000 ;font-size: 15px ;"></i>
                                                        <i class="gdlr-core-icon-list-icon fa fa-envelope" style="color: #000000 ;font-size: 15px ;width: 15px ;"></i>
                                                    </span>
                                                    <div class="gdlr-core-icon-list-content-wrap">
                                                        <span class="gdlr-core-icon-list-content" style="color: #282828 ;font-size: 19px ;">Email</span>
                                                        <span class="gdlr-core-icon-list-caption" style="color: #2d5fde ;font-size: 19px ;">{{$contact->email}}</span>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-36">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class=" gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                       
                                            <div class="screen-reader-response"></div>
                                            <form action="/contactus" method="post" id="contactadd" novalidate="novalidate">
                                                <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                                                <div class="gdlr-core-input-wrap gdlr-core-large gdlr-core-full-width gdlr-core-with-column gdlr-core-no-border">
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-name">
                                                            <input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên*">
                                                        </span>
                                                    </div>
                                                    <div class="gdlr-core-column-30">
                                                        <span class="wpcf7-form-control-wrap your-email">
                                                            <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-invalid="false" placeholder="Email">
                                                        </span>
                                                     </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-60">
                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                            <input type="text" name="your-phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Phone*">
                                                            </span>
                                                        </div>
                                                        <div class="clear"></div>
                                                        <div class="gdlr-core-column-60">
                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                <input type="text" name="your-message" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="CMND*">
                                                            </span>
                                                        </div>
                                                        <div class="gdlr-core-column-60 gdlr-core-center-align">
                                                            <input type="submit" value="Submit" class="form-control">
                                                        </div>
                                                    </div>
                                                <div style="color:red" class="response-output"></div>
                                            </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    $("#contactadd").submit(function(event) {

        /* stop form from submitting normally */
        event.preventDefault();
        /* get some values from elements on the page: */
        var $form = $(this),
            _token = $form.find('input[name="_token"]').val(),
            name = $form.find('input[name="your-name"]').val(),
            email = $form.find('input[name="your-email"]').val(),
            phone = $form.find('input[name="your-phone"]').val(),
            description = $form.find('textarea[name="your-message"]').val(),
            url = $form.attr('action');

        /* Send the data using post */
        var posting = $.post(url, {
            _token: _token,
            name: name,
            email: email,
            phone: phone,
            description: description
        });

        /* Put the results in a div */
        posting.done(function(data) {
            var content = data.message;
            $(".response-output").empty().append(content);
        });

        posting.fail(function(data) {
            var content = data.message;
            $('.response-output').empty().append(content);
        });
    })
</script>
@stop
