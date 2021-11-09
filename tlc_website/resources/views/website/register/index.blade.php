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
                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 75px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;color: #ffffff ;">Tạo Tài Khoản Thực
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
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js " style="max-width: 850px ;">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap ">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 43px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;">Mở Tài Khoản để giao dịch ngay.
                                                <span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                       <!--  <span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 19px ;font-style: normal ;">Chúng tôi sẽ liên lạc với bạn sớm nhất.</span> -->
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
                    <div class="gdlr-core-pbf-column gdlr-core-column-10">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class=" gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-40">
                    <iframe
                        id="JotFormIFrame-203101771846451"
                        title="Futures Rapid"
                        onload="window.parent.scrollTo(0,0)"
                        allowtransparency="true"
                        allowfullscreen="true"
                        allow="geolocation; microphone; camera"
                        src="https://form.jotform.com/203101771846451"
                        frameborder="0"
                        style="
                        min-width: 100%;
                        height:539px;
                        border:none;"
                        scrolling="no"
                        >
                        </iframe>
                        <script type="text/javascript">
                        var ifr = document.getElementById("JotFormIFrame-203101771846451");
                        if(window.location.href && window.location.href.indexOf("?") > -1) {
                        var get = window.location.href.substr(window.location.href.indexOf("?") + 1);
                        if(ifr && get.length > 0) {
                        var src = ifr.src;
                        src = src.indexOf("?") > -1 ? src + "&" + get : src + "?" + get;
                        ifr.src = src;
                        }
                        }
                        window.handleIFrameMessage = function(e) {
                        if (typeof e.data === 'object') { return; }
                        var args = e.data.split(":");
                        if (args.length > 2) { iframe = document.getElementById("JotFormIFrame-" + args[(args.length - 1)]); } else { iframe = document.getElementById("JotFormIFrame"); }
                        if (!iframe) { return; }
                        switch (args[0]) {
                        case "scrollIntoView":
                        iframe.scrollIntoView();
                        break;
                        case "setHeight":
                        iframe.style.height = args[1] + "px";
                        break;
                        case "collapseErrorPage":
                        if (iframe.clientHeight > window.innerHeight) {
                        iframe.style.height = window.innerHeight + "px";
                        }
                        break;
                        case "reloadPage":
                        window.location.reload();
                        break;
                        case "loadScript":
                        var src = args[1];
                        if (args.length > 3) {
                        src = args[1] + ':' + args[2];
                        }
                        var script = document.createElement('script');
                        script.src = src;
                        script.type = 'text/javascript';
                        document.body.appendChild(script);
                        break;
                        case "exitFullscreen":
                        if (window.document.exitFullscreen) window.document.exitFullscreen();
                        else if (window.document.mozCancelFullScreen) window.document.mozCancelFullScreen();
                        else if (window.document.mozCancelFullscreen) window.document.mozCancelFullScreen();
                        else if (window.document.webkitExitFullscreen) window.document.webkitExitFullscreen();
                        else if (window.document.msExitFullscreen) window.document.msExitFullscreen();
                        break;
                        }
                        var isJotForm = (e.origin.indexOf("jotform") > -1) ? true : false;
                        if(isJotForm && "contentWindow" in iframe && "postMessage" in iframe.contentWindow) {
                        var urls = {"docurl":encodeURIComponent(document.URL),"referrer":encodeURIComponent(document.referrer)};
                        iframe.contentWindow.postMessage(JSON.stringify({"type":"urls","value":urls}), "*");
                        }
                        };
                        if (window.addEventListener) {
                        window.addEventListener("message", handleIFrameMessage, false);
                        } else if (window.attachEvent) {
                        window.attachEvent("onmessage", handleIFrameMessage);
                        }
                    </script>
                    <!-- <script type="text/javascript" src="https://form.jotform.com/jsform/203101771846451"></script> -->

                        <!-- <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class=" gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                       
                                            <div class="screen-reader-response"></div>
                                            <form action="/register" method="post" id="registeradd" novalidate="novalidate">
                                                <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                                                <div class="gdlr-core-input-wrap gdlr-core-large gdlr-core-full-width gdlr-core-with-column gdlr-core-no-border">
                                                    <div class="gdlr-core-column-60">
                                                        <span class="wpcf7-form-control-wrap your-name">
                                                            <input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên*">
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
                                                        <span class="wpcf7-form-control-wrap your-email">
                                                            <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email*">
                                                        </span>
                                                     </div>
                                                    
                                                    
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-60">
                                                        <span class="wpcf7-form-control-wrap your-message">
                                                            <select aria-required="true" name="your-country" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" style="padding: 20px 18px;background-color: #f5f5f5;margin-bottom: 20px;width: 100%;font-size: 15px;">
                                                               
                                                                @foreach ($country as $index)
                                                                    <option value="{{$index->name}}">{{$index->name}}</option>
                                                                @endforeach
                                                            </select>
                                                            
                                                        </span>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="gdlr-core-column-60">
                                                        <span class="wpcf7-form-control-wrap your-phone">
                                                            <input type="text" name="your-province" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Province">
                                                        </span>
                                                    </div>


                                                    <div class="gdlr-core-column-60 gdlr-core-center-align">
                                                        <input type="submit" id="registerbutton" value="Đăng Ký Ngay" class="form-control">
                                                    </div>
                                                    </div>
                                                <div style="color:green" class="response-output"></div>
                                            </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script type="text/javascript">
    $("#registeradd").submit(function(event) {
        $("#registerbutton").attr('value', 'Waiting');
        $('input[type="submit"]').attr('disabled','disabled');
        /* stop form from submitting normally */
        event.preventDefault();
        /* get some values from elements on the page: */
        var $form = $(this),
            _token = $form.find('input[name="_token"]').val(),
            name = $form.find('input[name="your-name"]').val(),
            email = $form.find('input[name="your-email"]').val(),
            phone = $form.find('input[name="your-phone"]').val(),
            country = $form.find('select[name="your-country"]').val(),
            province = $form.find('input[name="your-province"]').val(),
            
            url = $form.attr('action');

        /* Send the data using post */
        var posting = $.post(url, {
            _token: _token,
            name: name,
            email: email,
            phone: phone,
            country: country,
            province : province,
        });

        /* Put the results in a div */
        posting.done(function(data) {
            var content = data.message;
            $(".response-output").empty().append(content);
            $("#registerbutton").attr('value', 'Đăng Ký Ngay');
            $('input[type="submit"]').removeAttr('disabled');
        });

        posting.fail(function(data) {
            var content = data.message;
            $('.response-output').empty().append(content);
            $("#registerbutton").attr('value', 'Đăng Ký Ngay');
            $('input[type="submit"]').removeAttr('disabled');
        });
    })
</script> -->
@stop
