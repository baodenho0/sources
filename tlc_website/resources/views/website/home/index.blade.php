@extends("website.layouts.master")
@section("title",'Tập đoàn môi giới hàng hóa chỉ số Top 1')
@section("content")

<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-mobile" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #21365e;"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-revolution-slider-item gdlr-core-item-pdlr gdlr-core-item-pdb" style="padding-bottom: 0px;">
                            <div
                                id="rev_slider_4_1_wrapper"
                                class="rev_slider_wrapper fullwidthbanner-container"
                                data-source="gallery"
                                style="margin: 0px auto; background: transparent; padding: 0px; margin-top: 0px; margin-bottom: 0px;"
                            >
                                <!-- START REVOLUTION SLIDER 5.4.8 auto mode -->
                                <div id="rev_slider_4_1" class="rev_slider fullwidthabanner" style="display: none;" data-version="5.4.8">
                                    <ul>
                                        <!-- SLIDE  -->
                                        @foreach ($slide as $element)
                                        <li
                                            data-index="rs-{{$loop->index}}"
                                            data-transition="fade"
                                            data-slotamount="default"
                                            data-hideafterloop="0"
                                            data-hideslideonmobile="off"
                                            data-easein="default"
                                            data-easeout="default"
                                            data-masterspeed="300"
                                            data-thumb=""
                                            data-rotate="0"
                                            data-saveperformance="off"
                                            data-title="Slide"
                  
                                        >
                                            <!-- MAIN IMAGE -->
                                            <img
                                                src="tlc/images/transparent.png"
                                                alt=""
                                                title="Homepage 3"
                                                data-bgposition="center center"
                                                data-bgfit="cover"
                                                data-bgrepeat="no-repeat"
                                                data-bgparallax="off"
                                                class="rev-slidebg"
                                                data-no-retina
                                            />
                                            <!-- LAYERS -->

                                            <!-- LAYER NR. 1 -->
                                            <div
                                                class="tp-caption tp-resizeme"
                                                id="slide-{{$loop->index}}-layer-1"
                                                data-x="-2"
                                                data-y=""
                                                data-width="['none','none','none','none']"
                                                data-height="['none','none','none','none']"
                                                data-type="image"
                                                data-responsive_offset="on"
                                                data-frames='[{"delay":10,"speed":950,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                                data-paddingtop="[0,0,0,0]"
                                                data-paddingright="[0,0,0,0]"
                                                data-paddingbottom="[0,0,0,0]"
                                                data-paddingleft="[0,0,0,0]"
                                                style="z-index: 5;"
                                            >
                                                <img src="{{ asset('').$element->image }}" alt="" data-ww="1920px" data-hh="900px" width="1920" height="900" data-no-retina />
                                            </div>
                                        </li>
                                        @endforeach
 
                                    </ul>
                                    <script>
                                        var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                        var htmlDivCss = "";
                                        if (htmlDiv) {
                                            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                        } else {
                                            var htmlDiv = document.createElement("div");
                                            htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                            document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                        }
                                    </script>
                                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                </div>
                                <script>
                                    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    var htmlDivCss = "";
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                                <script type="text/javascript">
                                    if (setREVStartSize !== undefined) setREVStartSize({ c: "#rev_slider_4_1", gridwidth: [1920], gridheight: [900], sliderLayout: "auto" });

                                    var revapi4, tpj;
                                    (function () {
                                        if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
                                        else onLoad();
                                        function onLoad() {
                                            if (tpj === undefined) {
                                                tpj = jQuery;
                                                if ("off" == "on") tpj.noConflict();
                                            }
                                            if (tpj("#rev_slider_4_1").revolution == undefined) {
                                                revslider_showDoubleJqueryError("#rev_slider_4_1");
                                            } else {
                                                revapi4 = tpj("#rev_slider_4_1")
                                                    .show()
                                                    .revolution({
                                                        sliderType: "standard",
                                                        jsFileLocation: "js/",
                                                        sliderLayout: "auto",
                                                        dottedOverlay: "none",
                                                        delay: 9000,
                                                        navigation: {
                                                            keyboardNavigation: "off",
                                                            keyboard_direction: "horizontal",
                                                            mouseScrollNavigation: "off",
                                                            mouseScrollReverse: "default",
                                                            onHoverStop: "off",
                                                            arrows: {
                                                                style: "uranus",
                                                                enable: true,
                                                                hide_onmobile: false,
                                                                hide_onleave: true,
                                                                hide_delay: 200,
                                                                hide_delay_mobile: 1200,
                                                                tmp: "",
                                                                left: {
                                                                    h_align: "left",
                                                                    v_align: "center",
                                                                    h_offset: 20,
                                                                    v_offset: 0,
                                                                },
                                                                right: {
                                                                    h_align: "right",
                                                                    v_align: "center",
                                                                    h_offset: 20,
                                                                    v_offset: 0,
                                                                },
                                                            },
                                                            bullets: {
                                                                enable: true,
                                                                hide_onmobile: false,
                                                                style: "uranus",
                                                                hide_onleave: false,
                                                                direction: "horizontal",
                                                                h_align: "center",
                                                                v_align: "bottom",
                                                                h_offset: 0,
                                                                v_offset: 30,
                                                                space: 10,
                                                                tmp: '<span class="tp-bullet-inner"></span>',
                                                            },
                                                        },
                                                        visibilityLevels: [1240, 1024, 778, 480],
                                                        gridwidth: 1920,
                                                        gridheight: 900,
                                                        lazyType: "none",
                                                        parallax: {
                                                            type: "mouse",
                                                            origo: "enterpoint",
                                                            speed: 400,
                                                            speedbg: 0,
                                                            speedls: 0,
                                                            levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 51, 55],
                                                        },
                                                        shadow: 0,
                                                        spinner: "off",
                                                        stopLoop: "off",
                                                        stopAfterLoops: -1,
                                                        stopAtSlide: -1,
                                                        shuffle: "off",
                                                        autoHeight: "off",
                                                        disableProgressBar: "on",
                                                        hideThumbsOnMobile: "off",
                                                        hideSliderAtLimit: 0,
                                                        hideCaptionAtLimit: 0,
                                                        hideAllCaptionAtLilmit: 0,
                                                        debugMode: false,
                                                        fallbacks: {
                                                            simplifyAll: "off",
                                                            nextSlideOnWindowFocus: "off",
                                                            disableFocusListener: false,
                                                        },
                                                    });
                                            } /* END OF revapi call */
                                        } /* END OF ON LOAD FUNCTION */
                                    })(); /* END OF WRAPPING FUNCTION */
                                </script>
                                <script>
                                    var htmlDivCss = unescape(
                                        "%23rev_slider_4_1%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_4_1%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_4_1%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A%23rev_slider_4_1%20.uranus%20.tp-bullet%7B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%0A%20%20-webkit-transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20background%3Atransparent%3B%0A%20%20width%3A15px%3B%0A%20%20height%3A15px%3B%0A%7D%0A%23rev_slider_4_1%20.uranus%20.tp-bullet.selected%2C%0A%23rev_slider_4_1%20.uranus%20.tp-bullet%3Ahover%20%7B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C1%29%3B%0A%20%20border%3Anone%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background%3Atransparent%3B%0A%7D%0A%0A%23rev_slider_4_1%20.uranus%20.tp-bullet-inner%20%7B%0A%20%20-webkit-transition%3A%20background-color%200.3s%20ease%2C%20-webkit-transform%200.3s%20ease%3B%0A%20%20transition%3A%20background-color%200.3s%20ease%2C%20transform%200.3s%20ease%3B%0A%20%20top%3A%200%3B%0A%20%20left%3A%200%3B%0A%20%20width%3A%20100%25%3B%0A%20%20height%3A%20100%25%3B%0A%20%20outline%3A%20none%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background-color%3A%20rgb%28255%2C%20255%2C%20255%29%3B%0A%20%20background-color%3A%20rgba%28255%2C%20255%2C%20255%2C%200.3%29%3B%0A%20%20text-indent%3A%20-999em%3B%0A%20%20cursor%3A%20pointer%3B%0A%20%20position%3A%20absolute%3B%0A%7D%0A%0A%23rev_slider_4_1%20.uranus%20.tp-bullet.selected%20.tp-bullet-inner%2C%0A%23rev_slider_4_1%20.uranus%20.tp-bullet%3Ahover%20.tp-bullet-inner%7B%0A%20transform%3A%20scale%280.4%29%3B%0A%20-webkit-transform%3A%20scale%280.4%29%3B%0A%20background-color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%7D%0A"
                                    );
                                    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                            </div>
                            <!-- END REVOLUTION SLIDER -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop-tablet" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap" style="background-color: #21365e;"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-revolution-slider-item gdlr-core-item-pdlr gdlr-core-item-pdb" style="padding-bottom: 0px;">
                            <div
                                id="rev_slider_5_2_wrapper"
                                class="rev_slider_wrapper fullwidthbanner-container"
                                data-source="gallery"
                                style="margin: 0px auto; background: transparent; padding: 0px; margin-top: 0px; margin-bottom: 0px;"
                            >
                                <!-- START REVOLUTION SLIDER 5.4.8 auto mode -->
                                <div id="rev_slider_5_2" class="rev_slider fullwidthabanner" style="display: none;" data-version="5.4.8">
                                    <ul>
                                        <!-- SLIDE  -->
                                        @foreach ($slide as $element)
                                        <li
                                            data-index="rs-{{$loop->index}}"
                                            data-transition="fade"
                                            data-slotamount="default"
                                            data-hideafterloop="0"
                                            data-hideslideonmobile="off"
                                            data-easein="default"
                                            data-easeout="default"
                                            data-masterspeed="300"
                                            data-thumb=""
                                            data-rotate="0"
                                            data-saveperformance="off"
                                            data-title="Slide"
                                           
                                        >
                                            <!-- MAIN IMAGE -->
                                            <img
                                                src="tlc/images/transparent.png"
                                                alt=""
                                                title="Homepage 3"
                                                data-bgposition="center center"
                                                data-bgfit="cover"
                                                data-bgrepeat="no-repeat"
                                                data-bgparallax="off"
                                                class="rev-slidebg"
                                                data-no-retina
                                            />
                                            <!-- LAYERS -->

                                            <!-- LAYER NR. 1 -->
                                            <div
                                                class="tp-caption tp-resizeme"
                                                id="slide-{{$loop->index}}-layer-1"
                                                data-x="['left','left','left','left']"
                                                data-hoffset="['-2','-2','-2','-225']"
                                                data-y="['top','top','top','top']"
                                                data-voffset="['0','0','0','-70']"
                                                data-width="none"
                                                data-height="none"
                                                data-whitespace="nowrap"
                                                data-type="image"
                                                data-responsive_offset="on"
                                                data-frames='[{"delay":10,"speed":950,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                data-textAlign="['inherit','inherit','inherit','inherit']"
                                                data-paddingtop="[0,0,0,0]"
                                                data-paddingright="[0,0,0,0]"
                                                data-paddingbottom="[0,0,0,0]"
                                                data-paddingleft="[0,0,0,0]"
                                                style="z-index: 5;"
                                            >
                                                <img
                                                    src="{{ asset('').$element->image }}"
                                                    alt=""
                                                    data-ww="['1920px','1920px','1920px','930px']"
                                                    data-hh="['900px','900px','900px','436px']"
                                                    width="1920"
                                                    height="900"
                                                    data-no-retina
                                                />
                                            </div>
                                        </li>
                                        @endforeach
                                        
                                    </ul>
                                    <script>
                                        var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                        var htmlDivCss = "";
                                        if (htmlDiv) {
                                            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                        } else {
                                            var htmlDiv = document.createElement("div");
                                            htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                            document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                        }
                                    </script>
                                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                </div>
                                <script>
                                    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    var htmlDivCss = "";
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                                <script type="text/javascript">
                                    if (setREVStartSize !== undefined)
                                        setREVStartSize({ c: "#rev_slider_5_2", responsiveLevels: [1240, 1240, 1240, 480], gridwidth: [1400, 1400, 1400, 480], gridheight: [900, 900, 900, 350], sliderLayout: "auto" });

                                    var revapi5, tpj;
                                    (function () {
                                        if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
                                        else onLoad();
                                        function onLoad() {
                                            if (tpj === undefined) {
                                                tpj = jQuery;
                                                if ("off" == "on") tpj.noConflict();
                                            }
                                            if (tpj("#rev_slider_5_2").revolution == undefined) {
                                                revslider_showDoubleJqueryError("#rev_slider_5_2");
                                            } else {
                                                revapi5 = tpj("#rev_slider_5_2")
                                                    .show()
                                                    .revolution({
                                                        sliderType: "standard",
                                                        jsFileLocation: "js/",
                                                        sliderLayout: "auto",
                                                        dottedOverlay: "none",
                                                        delay: 9000,
                                                        navigation: {
                                                            keyboardNavigation: "off",
                                                            keyboard_direction: "horizontal",
                                                            mouseScrollNavigation: "off",
                                                            mouseScrollReverse: "default",
                                                            onHoverStop: "off",
                                                            arrows: {
                                                                style: "uranus",
                                                                enable: true,
                                                                hide_onmobile: false,
                                                                hide_onleave: true,
                                                                hide_delay: 200,
                                                                hide_delay_mobile: 1200,
                                                                tmp: "",
                                                                left: {
                                                                    h_align: "left",
                                                                    v_align: "center",
                                                                    h_offset: 20,
                                                                    v_offset: 0,
                                                                },
                                                                right: {
                                                                    h_align: "right",
                                                                    v_align: "center",
                                                                    h_offset: 20,
                                                                    v_offset: 0,
                                                                },
                                                            },
                                                            bullets: {
                                                                enable: true,
                                                                hide_onmobile: false,
                                                                style: "uranus",
                                                                hide_onleave: false,
                                                                direction: "horizontal",
                                                                h_align: "center",
                                                                v_align: "bottom",
                                                                h_offset: 0,
                                                                v_offset: 30,
                                                                space: 10,
                                                                tmp: '<span class="tp-bullet-inner"></span>',
                                                            },
                                                        },
                                                        responsiveLevels: [1240, 1240, 1240, 480],
                                                        visibilityLevels: [1240, 1240, 1240, 480],
                                                        gridwidth: [1400, 1400, 1400, 480],
                                                        gridheight: [900, 900, 900, 350],
                                                        lazyType: "none",
                                                        parallax: {
                                                            type: "mouse",
                                                            origo: "enterpoint",
                                                            speed: 400,
                                                            speedbg: 0,
                                                            speedls: 0,
                                                            levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 51, 55],
                                                        },
                                                        shadow: 0,
                                                        spinner: "off",
                                                        stopLoop: "off",
                                                        stopAfterLoops: -1,
                                                        stopAtSlide: -1,
                                                        shuffle: "off",
                                                        autoHeight: "off",
                                                        disableProgressBar: "on",
                                                        hideThumbsOnMobile: "off",
                                                        hideSliderAtLimit: 0,
                                                        hideCaptionAtLimit: 0,
                                                        hideAllCaptionAtLilmit: 0,
                                                        debugMode: false,
                                                        fallbacks: {
                                                            simplifyAll: "off",
                                                            nextSlideOnWindowFocus: "off",
                                                            disableFocusListener: false,
                                                        },
                                                    });
                                            } /* END OF revapi call */
                                        } /* END OF ON LOAD FUNCTION */
                                    })(); /* END OF WRAPPING FUNCTION */
                                </script>
                                <script>
                                    var htmlDivCss = unescape(
                                        "%23rev_slider_5_2%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_5_2%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_5_2%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A%23rev_slider_5_2%20.uranus%20.tp-bullet%7B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%0A%20%20-webkit-transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20background%3Atransparent%3B%0A%20%20width%3A15px%3B%0A%20%20height%3A15px%3B%0A%7D%0A%23rev_slider_5_2%20.uranus%20.tp-bullet.selected%2C%0A%23rev_slider_5_2%20.uranus%20.tp-bullet%3Ahover%20%7B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C1%29%3B%0A%20%20border%3Anone%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background%3Atransparent%3B%0A%7D%0A%0A%23rev_slider_5_2%20.uranus%20.tp-bullet-inner%20%7B%0A%20%20-webkit-transition%3A%20background-color%200.3s%20ease%2C%20-webkit-transform%200.3s%20ease%3B%0A%20%20transition%3A%20background-color%200.3s%20ease%2C%20transform%200.3s%20ease%3B%0A%20%20top%3A%200%3B%0A%20%20left%3A%200%3B%0A%20%20width%3A%20100%25%3B%0A%20%20height%3A%20100%25%3B%0A%20%20outline%3A%20none%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background-color%3A%20rgb%28255%2C%20255%2C%20255%29%3B%0A%20%20background-color%3A%20rgba%28255%2C%20255%2C%20255%2C%200.3%29%3B%0A%20%20text-indent%3A%20-999em%3B%0A%20%20cursor%3A%20pointer%3B%0A%20%20position%3A%20absolute%3B%0A%7D%0A%0A%23rev_slider_5_2%20.uranus%20.tp-bullet.selected%20.tp-bullet-inner%2C%0A%23rev_slider_5_2%20.uranus%20.tp-bullet%3Ahover%20.tp-bullet-inner%7B%0A%20transform%3A%20scale%280.4%29%3B%0A%20-webkit-transform%3A%20scale%280.4%29%3B%0A%20background-color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%7D%0A"
                                    );
                                    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                            </div>
                            <!-- END REVOLUTION SLIDER -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-tablet-mobile" style="padding: 30px 0px 30px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-10 gdlr-core-column-first gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 20px 20px 20px 20px;"><div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div></div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <h4 style="text-align: center; font-size: 28px;">Tỷ Giá</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <div class="tradingview-widget-container">
                                                <div class="tradingview-widget-container__widget" style="text-align: center;"></div>
                                                <p>
                                                    <iframe scrolling="no" allowtransparency="true" frameborder="0" src="https://s.tradingview.com/embed-widget/forex-cross-rates/?locale=en#%7B%22width%22%3A%22800%22%2C%22height%22%3A%22400%22%2C%22currencies%22%3A%5B%22EUR%22%2C%22USD%22%2C%22JPY%22%2C%22GBP%22%2C%22CHF%22%2C%22AUD%22%2C%22CAD%22%5D%2C%22utm_source%22%3A%22www.tlcglobal.asia%22%2C%22utm_medium%22%3A%22widget%22%2C%22utm_campaign%22%3A%22forex-cross-rates%22%7D" style="box-sizing: border-box; height: 400px; width: 100%;"></iframe>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-10 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 20px 20px 20px 20px;"><div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 70px 0px 50px 0px;" data-sync-height="ceo-1">
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;"><h3 style="color: #2458df; font-size: 28px;">Tỷ Giá</h3></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <iframe scrolling="no" allowtransparency="true" frameborder="0" src="https://s.tradingview.com/embed-widget/forex-cross-rates/?locale=en#%7B%22width%22%3A%22800%22%2C%22height%22%3A%22400%22%2C%22currencies%22%3A%5B%22EUR%22%2C%22USD%22%2C%22JPY%22%2C%22GBP%22%2C%22CHF%22%2C%22AUD%22%2C%22CAD%22%5D%2C%22utm_source%22%3A%22www.tlcglobal.asia%22%2C%22utm_medium%22%3A%22widget%22%2C%22utm_campaign%22%3A%22forex-cross-rates%22%7D" style="box-sizing: border-box; height: 400px; width: 100%;"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>









        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-tablet-mobile" style="padding: 30px 0px 30px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-first gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 20px 20px 20px 20px;"><div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div></div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <h4 style="text-align: center; font-size: 28px;">3 BƯỚC ĐỂ BẮT ĐẦU GIAO DỊCH</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <div class="tradingview-widget-container">
                                                <div class="tradingview-widget-container__widget" style="text-align: center;"></div>
                                                <p>
                                                <div class="row">
                                                    <div class="gdlr-core-column-20" style="padding-right: 30px;">
                                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">1.</p>
                                                            </div>
                                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step1}}</p>
                                                                <p class="desc">{{$step->desc1}}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="gdlr-core-column-20" style="padding-right: 30px;">
                                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">2.</p>
                                                            </div>
                                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step2}}</p>
                                                                <p class="desc">{{$step->desc2}}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="gdlr-core-column-20" >
                                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">3.</p>
                                                            </div>
                                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step3}}</p>
                                                                <p class="desc">{{$step->desc3}}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-10 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 20px 20px 20px 20px;"><div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 70px 0px 50px 0px;" data-sync-height="ceo-1">
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;"><h3 style="color: #2458df; font-size: 28px;">3 BƯỚC ĐỂ BẮT ĐẦU GIAO DỊCH</h3></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                <div class="row">
                                    <div class="gdlr-core-column-20" style="padding-bottom: 30px;">
                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">1.</p>
                                            </div>
                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step1}}</p>
                                                <p class="desc">{{$step->desc1}}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-column-20" style="padding-bottom: 30px;">
                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">2.</p>
                                            </div>
                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step2}}</p>
                                                <p class="desc">{{$step->desc2}}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gdlr-core-column-20" >
                                        <div class="item pd-15" style="background-color: #34495e; display: flex; height: 88px; transform: skewX(-13deg); z-index: 2;">
                                            <div class="number-step" style="display: flex; margin-left: 25px; border-right: 1px solid #bfbfbf; padding-right: 15px;">
                                                <p style="color: #fff; font-family: 'Abril Fatface',cursive; font-size: 32px;">3.</p>
                                            </div>
                                            <div class="content" style="padding-left: 15px; transform: skewX(13deg);">
                                                <p class="title" style="font-size: 24px; color: #fff; text-transform: uppercase;    margin-bottom: 0px;">{{$step->step3}}</p>
                                                <p class="desc">{{$step->desc3}}</p>
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
        </div>


        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-tablet-mobile" style="padding: 0px 0px 0px 20px;">
            <div class="gdlr-core-pbf-background-wrap" style="background: #f5f5f5;">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 30px 0px 0px 0px;" >
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                <div class="content_left">
                                    <ul style="list-style-image: url('checked.png');">
                                    @foreach($step_description as $steps)
                                        <li>
                                            <div class="content" style="padding-left: 15px; ">
                                                <p class="title" style="font-size: 20px; margin-bottom: 0px;font-weight: 700;">{{$steps->name}}</p>
                                                <p class="desc">{{$steps->description}}</p>
                                            </div>
                                        </li>
                                    @endforeach
                                    </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-hide-in-tablet-mobile">
                        <div
                            style="background-image: url({{loadImage($step->image)}}); height:550px ; background-size: cover;"
                        ></div>
                    </div>
                    <!-- <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="ceo-1">
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($step->image)}}); background-size: cover; background-position: bottom center;"
                                    data-parallax-speed="-0.1"
                                ></div>
                            </div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"></div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 70px 0px 50px 0px;" data-sync-height="ceo-1">
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                               
                                <div class="gdlr-core-pbf-element">
                                <div class="content_left">
                                    <ul style="list-style-image: url('checked.png');">
                                    @foreach($step_description as $step)
                                        <li>
                                            <div class="content" style="padding-left: 15px; ">
                                                <p class="title" style="font-size: 20px; margin-bottom: 0px;font-weight: 700;">{{$step->name}}</p>
                                                <p class="desc">{{$step->description}}</p>
                                            </div>
                                        </li>
                                    @endforeach
                                    </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

























        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-tablet-mobile" style="padding: 30px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 70px 0px 50px 0px;" data-sync-height="ceo-1">
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;"><h3 style="color: #2458df; font-size: 28px;">{{$banner->title}}</h3></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    {!!$banner->description!!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-hide-in-tablet-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="ceo-1">
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($banner->image)}}); background-size: cover; background-position: bottom center;"
                                    data-parallax-speed="-0.1"
                                ></div>
                            </div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 70px 0px 50px 0px;" data-sync-height="ceo-1">
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;"><h3 style="color: #2458df; font-size: 28px;">{{$banner->title}}</h3></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    {!!$banner->description!!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 135px 60px 70px 80px;" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #1c1c1c;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[0]->image) ?? null}}); opacity: 0.15; background-size: cover; background-position: center;"
                                    data-parallax-speed="0.1"
                                ></div>
                            </div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 24px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 23px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #7aa9ff;">
                                            {{$homeService[0]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #c3c3c3;">
                                            <p>
                                            {{$homeService[0]->description}}
                                            </p>
                                            <p>
                                                <a style="color: #ffffff;" href="{{$homeService[0]->link}}"><u>Đọc Tiếp >></u></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-15">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[0]->image) ?? null}}); background-size: cover; background-position: center;"
                                    data-parallax-speed="0.1"
                                ></div>
                            </div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-hide-in-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #2d5fde;"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 20px;">
                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image gdlr-core-image-item-style-rectangle" style="border-width: 0px;">
                                            <a href="{{$homeService[0]->link}}" target="_self">
                                                <img src="{{loadImage($homeService[0]->icon) ?? null}}" alt="" width="60" height="60" title="1" />
                                                <span class="gdlr-core-image-overlay"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-link"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 18px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                            {{$homeService[0]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                    <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[1]->image) ?? null}}); background-size: cover; background-position: center;"
                                    data-parallax-speed="0"
                                ></div>
                            </div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-hide-in-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #ffffff;"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 20px;">
                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image gdlr-core-image-item-style-rectangle" style="border-width: 0px;">
                                            <a href="{{$homeService[1]->link}}" target="_self"><img src="{{loadImage($homeService[1]->icon) ?? null}}" alt="" width="60" height="60" title="2" /><span class="gdlr-core-image-overlay"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 18px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #212121;">
                                            {{$homeService[1]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 135px 60px 70px 80px;" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #1c1c1c;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[1]->image) ?? null}}); opacity: 0.17; background-size: cover; background-position: center;"
                                    data-parallax-speed="0.1"
                                ></div>
                            </div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInRight"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 24px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 23px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #7aa9ff;">
                                            {{$homeService[1]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #c3c3c3;">
                                            <p>
                                            {{$homeService[1]->description}}
                                            </p>
                                            <p>
                                                <a style="color: #ffffff;" href="{{$homeService[1]->link}}"><u>Đọc Tiếp >></u></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap"></div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" style="padding: 135px 60px 70px 80px;" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #1c1c1c;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[2]->image) ?? null}}); opacity: 0.15; background-size: cover; background-position: center;"
                                    data-parallax-speed="0.1"
                                ></div>
                            </div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 24px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 23px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #7aa9ff;">
                                            {{$homeService[2]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #c3c3c3;">
                                            <p>
                                            {{$homeService[2]->description}}
                                            </p>
                                            <p>
                                                <a style="color: #ffffff;" href="{{$homeService[2]->link}}"><u>Đọc Tiếp >></u></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-hide-in-mobile">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #1b1b1b;"></div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-image-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 20px;">
                                        <div class="gdlr-core-image-item-wrap gdlr-core-media-image gdlr-core-image-item-style-rectangle" style="border-width: 0px;">
                                            <a href="{{$homeService[2]->link}}" target="_self">
                                                <img src="{{loadImage($homeService[2]->icon) ?? null}}" alt="" width="60" height="60" title="3" />
                                                <span class="gdlr-core-image-overlay"><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-link"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 18px; font-weight: 400; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                            {{$homeService[2]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-15">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js" data-sync-height="service-h-1" data-sync-height-center>
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[2]->image) ?? null}}); background-size: cover; background-position: center;"
                                    data-parallax-speed="0.05"
                                ></div>
                            </div>
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-mobile" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js gdlr-core-column-extend-left" data-sync-height="half-height">
                            <div class="gdlr-core-pbf-background-wrap">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[3]->image) ?? null}}); background-size: cover; background-position: center left;"
                                    data-parallax-speed="0.8"
                                ></div>
                            </div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInLeft"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            ></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js gdlr-core-column-extend-right" style="padding: 70px 0px 60px 35px;" data-sync-height="half-height">
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #383838;"></div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInRight"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 25px;">
                                       
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 45px; font-weight: 600; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                            {{$homeService[3]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <p>
                                            {{$homeService[3]->description}}
                                            </p>
                                            <p>
                                                <a style="color: #ffffff;" href="{{$homeService[2]->link}}"><u>Đọc Tiếp >></u></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper gdlr-core-hide-in-desktop-tablet" style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="opacity: 0.11; background-size: cover; background-position: center;" data-parallax-speed="0.1"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js gdlr-core-column-extend-right" style="padding: 70px 0px 60px 35px;" data-sync-height="half-height">
                            <div class="gdlr-core-pbf-background-wrap" style="background-color: #383838;">
                                <div
                                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                                    style="background-image: url({{loadImage($homeService[3]->image) ?? null}}); opacity: 0.3; background-size: cover; background-position: center;"
                                    data-parallax-speed="0.8"
                                ></div>
                            </div>
                            <div
                                class="gdlr-core-pbf-column-content clearfix gdlr-core-js gdlr-core-sync-height-content"
                                data-gdlr-animation="fadeInRight"
                                data-gdlr-animation-duration="600ms"
                                data-gdlr-animation-offset="0.8"
                            >
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 25px;">

                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 45px; font-weight: 600; letter-spacing: 0px; text-transform: none; color: #ffffff;">
                                            {{$homeService[3]->title}}<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content" style="font-size: 17px; text-transform: none; color: #d1defe;">
                                            <p>
                                            {{$homeService[3]->description}}
                                            </p>
                                            <p>
                                                <a style="color: #ffffff;" href="{{$homeService[3]->link}}"><u>Đọc Tiếp >></u></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--<div class="gdlr-core-pbf-wrapper" style="padding: 75px 0px 45px 0px;" data-skin="Home CTA">
            <div class="gdlr-core-pbf-background-wrap">
                <div
                    class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js"
                    style="background-image: url(images/hp3-cra-bg.jpg); background-size: cover; background-position: center;"
                    data-parallax-speed="0.1"
                ></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js" data-gdlr-animation="fadeIn" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-call-to-action-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-style-left-align-right-button">
                            <div class="gdlr-core-call-to-action-item-inner">
                                <div class="gdlr-core-call-to-action-item-content-wrap">
                                    <h3 class="gdlr-core-call-to-action-item-title" style="font-size: 31px; font-weight: 400; letter-spacing: 0px;">Connect with us now</h3>
                                    <div class="gdlr-core-call-to-action-item-caption gdlr-core-title-font gdlr-core-skin-caption">Please reach us anytime and we are pleased to assist you.</div>
                                </div>
                                <div class="gdlr-core-call-to-action-item-button">
                                    <a
                                        class="gdlr-core-button gdlr-core-button-solid gdlr-core-button-no-border"
                                        href="contactus/index.html"
                                        style="border-radius: 30px; -moz-border-radius: 30px; -webkit-border-radius: 30px;"
                                    >
                                        <span class="gdlr-core-content">Contact Us</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <div class="gdlr-core-pbf-section">
            <div class="gdlr-core-pbf-section-container gdlr-core-container clearfix">
                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js"><div class="gdlr-core-pbf-column-content clearfix gdlr-core-js"></div></div>
                </div>
            </div>
        </div>
    </div>
</div>
















<!-- <header class="ro-section ro-home">
    <div style="max-width: 1520px; margin :0 auto" class="ro-slider-style-1-wrapper">
        <div id="ro-slider-style-1" style="position: relative; top: 0px; left: 0px; width: 1520px; height: 700px; margin:0 auto;" class="ro-slider-style-1">
            <div data-u="slides" style="cursor: pointer; position: absolute; overflow: hidden; left: 0px; top: 0px; width: 1520px; height: 700px;">
                {{-- slide --}}
                @foreach ($slide as $element)
                <div>
                    <div data-u="image" data-before="red" class="ro-overlay-bg ro-home-slider-1-background ro-behind-bg-1 ro-front-bg-5"></div>
                    <div data-u="caption" data-t="B" style="position: absolute; top: 0px; left: 0px; width: 100%;height: 600px;"><img src="{{ asset('').$element->image }}" alt="slider-img" /></div>
                    <div data-u="caption" data-t="T" style="position: absolute; top: 225px; left: 620px; width: 800px;height: 120px;">
                        <p style="line-height:25px;" class="ro-font-size-3"><span style="position:relative;margin-left:80px; top:-10px"><span class="ro-font-size-1">{{ $element->title }}&nbsp;</span><span class="ro-font-size-2 ro-color-main">spa</span></span><br />{{ $element->description }}</p>
                    </div>
                    <div data-u="caption" data-t="B" data-t2="T" style="position: absolute; top: 325px; left: 620px; width: 150px;height: 40px;"><a href="{{ $element->link }}" class="ro-btn-bd-1">SEE MORE</a></div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</header>
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-xs-12 text-center ro-section-mb">
                <p class="ro-service-caption">
                    {{$title->description ?? null}}
                </p>
            </div>
            <div class="ro-service-1-wrapper">
                <div class="col-lg-7">
                    <div class="ro-service-1-item clearfix">
                        <div class="ro-image ro-left"><img src="{{loadImage($homeService[0]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                        <div class="ro-content">
                            <h3 class="ro-hr-heading">{{$homeService[0]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-1">{{$homeService[0]->description ?? null}}<a href="{{$homeService[0]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                    </div>
                    <div class="ro-service-1-item clearfix">
                        <div class="ro-content ro-left">
                            <h3 class="ro-hr-heading">{{$homeService[1]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-1">{{$homeService[1]->description ?? null}}<a href="{{$homeService[1]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                        <div class="ro-image"><img src="{{loadImage($homeService[1]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                    </div>
                </div>
                <div class="col-lg-5 col-xs-12">
                    <div class="ro-service-1-item ro-service-1-v clearfix">
                        <div class="ro-image ro-left"><img src="{{loadImage($homeService[2]->image) ?? null}}" alt="service" class="img-responsive" /></div>
                        <div class="ro-content">
                            <h3 class="ro-hr-heading">{{$homeService[2]->title ?? null}}</h3>
                            <p class="ro-bgc-trans-5">{{$homeService[2]->description ?? null}}<a href="{{$homeService[2]->link ?? null}}" class="ro-more"><i class="icon-right106"></i></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="ro-advertise-1 ro-section">
    <div class="container">
        <div class="row">
           <img width="100%" src="{{loadImage($banner->image)}}" alt="">
        </div>
    </div>
</div>
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row ro-section-mb">
            <div class="col-md-12">
                <h3 class="ro-hr-heading ro-section-heading">OUR TEAM</h3>
            </div>
            @foreach ($ourTeam as $element)
            <div class="col-md-4">
                <div class="ro-team-item"><img src="{{loadImage($element->image) ?? null}}" alt="team-member" class="img-responsive" />
                    <div class="ro-content">
                        <h5>{{$element->title ?? null}}</h5>
                        <p><i class="ro-color-main ro-font-regular">{{$element->type_name ?? null}}</i></p>
                        <p>{{$element->description ?? null}}
                        </p>
                        {{-- <ul class="ro-social">
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-gplus"></i></a></li>
                            <li><a href="#"><i class="icon-stumbleupon"></i></a></li>
                        </ul> --}}
                    </div>
                </div>
            </div>
            @endforeach
            {{-- <div class="col-md-4">
                <div class="ro-team-item"><img src="assets/images/team2.jpg" alt="team-member" class="img-responsive" />
                    <div class="ro-content">
                        <h5>MICHEL CARTER</h5>
                        <p><i class="ro-color-main ro-font-regular">Massage man</i></p>
                        <p>I have been licensed for 12 years. <br />Nice, clean, friendly, relaxing environment. Good rate,<br />flexible hours
                        </p>
                        <ul class="ro-social">
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-gplus"></i></a></li>
                            <li><a href="#"><i class="icon-stumbleupon"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="ro-team-item"><img src="assets/images/team3.jpg" alt="team-member" class="img-responsive" />
                    <div class="ro-content">
                        <h5>TARA STITLER</h5>
                        <p><i class="ro-color-main ro-font-regular">Yoga teacher</i></p>
                        <p>Certified in Hatha Yoga, Tara offers a fusion of different styles she has learned over the years, and blends tradition with the physiology of the body.
                        </p>
                        <ul class="ro-social">
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-gplus"></i></a></li>
                            <li><a href="#"><i class="icon-stumbleupon"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div> --}}
        </div>
        <div class="ro-hr"></div>
    </div>
</div>
<div class="ro-section ro-padding-top ro-small-border-top">
    <div class="container">
        <div id="ro-testimonial-slider" class="ro-testimonial-slider flexslider ro-section-mb">
            <ul class="slides">
                @foreach ($slideTitle as $element)
                <li class="ro-item">
                    <h5>{{ $element->title }}</h5>
                    <p>{{$element->description}}</p>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
</div> -->
@endsection
