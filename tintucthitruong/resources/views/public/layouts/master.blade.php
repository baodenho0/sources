<!DOCTYPE html>
<html lang="en-US">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <!--meta-->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="generator" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.2" />
    <meta name="description" content="Trading Intelligence" />
    <meta name="format-detection" content="telephone=no" />
    @yield("meta")
    <!--style-->
    {{--
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="feed/index.html" /> --}}
    {{--
    <link rel="pingback" href="xmlrpc.php" /> --}}
    <link rel="shortcut icon" href="{{ asset('/images/favicon.ico') }}" />
    <title>@yield("title") | Trading Intelligence</title>
    {{--
    <link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
    <link rel='dns-prefetch' href='http://s.w.org/' /> --}}
    {{--
    <link rel="alternate" type="application/rss+xml" title="Pressroom &raquo; Feed" href="feed/index.html" /> --}}
    {{--
    <link rel="alternate" type="application/rss+xml" title="Pressroom &raquo; Comments Feed" href="comments/feed/index.html" /> --}}
    {{--
    <link rel="alternate" type="application/rss+xml" title="Pressroom &raquo; HOME Comments Feed" href="home/feed/index.html" /> --}}
    <link rel='stylesheet' id='wp-block-library-css' href='{{ asset('wp-includes/css/dist/block-library/style.min58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-layout-css' href='{{ asset('wp-content/plugins/woocommerce/assets/css/woocommerce-layoutcd45.css?ver=3.4.3') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-smallscreen-css' href='{{ asset('wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreencd45.css?ver=3.4.3') }}' type='text/css' media='only screen and (max-width: 768px)' />
    <link rel='stylesheet' id='woocommerce-general-css' href='{{ asset('wp-content/plugins/woocommerce/assets/css/woocommercecd45.css?ver=3.4.3') }}' type='text/css' media='all' />
    <style id='woocommerce-inline-inline-css' type='text/css'>
    .woocommerce form .form-row .required {
        visibility: visible;
    }
    </style>
    <link rel='stylesheet' id='google-font-roboto-css' href='http://fonts.googleapis.com/css?family=Roboto%3A300%2C400%2C700&amp;ver=5.0.7' type='text/css' media='all' />
    <link rel='stylesheet' id='google-font-roboto-condensed-css' href='http://fonts.googleapis.com/css?family=Roboto+Condensed%3A300%2C400%2C700&amp;ver=5.0.7' type='text/css' media='all' />
    <link rel='stylesheet' id='reset-css' href='{{ asset('wp-content/themes/pressroom/style/reset58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='superfish-css' href='{{ asset('wp-content/themes/pressroom/style/superfish58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='prettyPhoto-css' href='{{ asset('wp-content/themes/pressroom/style/prettyPhoto58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='jquery-qtip-css' href='{{ asset('wp-content/themes/pressroom/style/jquery.qtip58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='odometer-css' href='{{ asset('wp-content/themes/pressroom/style/odometer-theme-default58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='animations-css' href='{{ asset('wp-content/themes/pressroom/style/animations58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='main-style-css' href='{{ asset('wp-content/themes/pressroom/style58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='menu-styles-css' href='{{ asset('wp-content/themes/pressroom/style/menu_styles58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css' href='{{ asset('wp-content/themes/pressroom/style/responsive58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-custom-css' href='{{ asset('wp-content/themes/pressroom/woocommerce/style58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-responsive-css' href='{{ asset('wp-content/themes/pressroom/woocommerce/responsive58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='ubermenu-pr-style-css' href='{{ asset('wp-content/themes/pressroom/style/ubermenu58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css' href='{{ asset('wp-content/themes/pressroom/custom58aa.css?ver=5.0.7') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='js_composer_front-css' href='{{ asset('wp-content/plugins/js_composer/assets/css/js_composer.min40df.css?ver=5.6') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='ubermenu-css' href='{{ asset('wp-content/plugins/ubermenu/pro/assets/css/ubermenu.min2072.css?ver=3.2.5') }}' type='text/css' media='all' />
    <link rel='stylesheet' id='ubermenu-font-awesome-css' href='{{ asset('wp-content/plugins/ubermenu/assets/css/fontawesome/css/font-awesome.mind7b7.css?ver=4.3') }}' type='text/css' media='all' />
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1') }}'></script>
    <script type='text/javascript'>
    /* 
                <![CDATA[ */
    var wc_add_to_cart_params = { "ajax_url": "\/wp_themes\/pressroom\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/wp_themes\/pressroom\/?wc-ajax=%%endpoint%%", "i18n_view_cart": "View cart", "cart_url": "http:\/\/quanticalabs.com\/wp_themes\/pressroom\/cart\/", "is_cart": "", "cart_redirect_after_add": "no" };
    /* ]]> */
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.mincd45.js?ver=3.4.3') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/js_composer/assets/js/vendors/woocommerce-add-to-cart40df.js?ver=5.6') }}'></script>
    <link rel='https://api.w.org/' href='wp-json/index.html' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="xmlrpc0db0.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="wp-includes/wlwmanifest.xml" />
    {{--
    <meta name="generator" content="WordPress 5.0.7" /> --}}
    {{--
    <meta name="generator" content="WooCommerce 3.4.3" /> --}}
    {{--
    <link rel="canonical" href="index.html" /> --}}
    {{--
    <link rel='shortlink' href='index.html' /> --}}
    <link rel="alternate" type="application/json+oembed" href="wp-json/oembed/1.0/embedaef4.json?url=http%3A%2F%2Fquanticalabs.com%2Fwp_themes%2Fpressroom%2F" />
    <link rel="alternate" type="text/xml+oembed" href="{{ asset('wp-json/oembed/1.0/embed0dc5?url=http%3A%2F%2Fquanticalabs.com%2Fwp_themes%2Fpressroom%2F&amp;format=xml') }}" />
    <style id="ubermenu-custom-generated-css">
    /** UberMenu Custom Menu Styles (Customizer) **/
    /* main */
    .ubermenu-main {
        max-width: 1050px;
    }

    .ubermenu-main.ubermenu-transition-fade .ubermenu-item .ubermenu-submenu-drop {
        margin-top: 0;
    }


    /* Status: Loaded from Transient */
    </style>
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <noscript>
        <style>
        .woocommerce-product-gallery {
            opacity: 1 !important;
        }
        </style>
    </noscript>
    <meta name="generator" content="" />
    <!--[if lte IE 9]>
            <link rel="stylesheet" type="text/css" href="http://quanticalabs.com/wp_themes/pressroom/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen">
                <![endif]-->
    <noscript>
        <style type="text/css">
        .wpb_animate_when_almost_visible {
            opacity: 1;
        }
        </style>
    </noscript>
    <!--custom style-->
    <style type="text/css"></style>
    @yield("styles")
</head>

<body class="home page-template page-template-template-default-without-breadcrumbs page-template-template-default-without-breadcrumbs-php page page-id-27 woocommerce-no-js wpb-js-composer js-comp-ver-5.6 vc_responsive">
    <div class="site_container">
        <!-- Header -->
        @include("public/layouts/header")
        <!-- /Header -->
        @yield("content")
        {{-- footer --}}
        @include("public/layouts/footer")
        {{-- /footer --}}
    </div>
    <div class="background_overlay"></div>
    <link rel="stylesheet" type="text/css" href="{{ asset('wp-content/themes/pressroom/style_selector/style_selector.css') }}">
    <script type="text/javascript" src="{{ asset('wp-content/themes/pressroom/style_selector/style_selector.js') }}"></script>
    <script type="text/javascript">
    var c = document.body.className;
    c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
    document.body.className = c;
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4') }}'></script>
    <script type='text/javascript'>
    /* 
                                                        <![CDATA[ */
    var woocommerce_params = { "ajax_url": "\/wp_themes\/pressroom\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/wp_themes\/pressroom\/?wc-ajax=%%endpoint%%" };
    /* ]]> */
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.mincd45.js?ver=3.4.3') }}'></script>
    <script type='text/javascript'>
    /* 
                                                        <![CDATA[ */
    var wc_cart_fragments_params = { "ajax_url": "\/wp_themes\/pressroom\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/wp_themes\/pressroom\/?wc-ajax=%%endpoint%%", "cart_hash_key": "wc_cart_hash_db621fef3fa9b3cfe50cddbb1f3c7f86", "fragment_name": "wc_fragments_db621fef3fa9b3cfe50cddbb1f3c7f86" };
    /* ]]> */
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.mincd45.js?ver=3.4.3') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/ui/core.mine899.js?ver=1.11.4') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/ui/widget.mine899.js?ver=1.11.4') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/ui/accordion.mine899.js?ver=1.11.4') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/jquery/ui/tabs.mine899.js?ver=1.11.4') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.ba-bbq.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.history58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.easing.1.358aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.carouFredSel-6.2.1-packed58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.touchSwipe.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.transit.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.sliderControl58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.timeago58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.hint58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.qtip.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.blockUI58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/jquery.prettyPhoto58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/odometer.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript'>
    /* 
                                                        <![CDATA[ */
    var config = [];
    // config = { "ajaxurl": "http:\/\/quanticalabs.com\/wp_themes\/pressroom\/wp-admin\/admin-ajax.php", "themename": "pressroom", "home_url": "http:\/\/quanticalabs.com\/wp_themes\/pressroom", "is_rtl": 0, "color_scheme": "light", "page_number": 0 };;
    /* ]]> */
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/themes/pressroom/js/main58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript'>
    /* 
                                                        <![CDATA[ */
    var ubermenu_data = { "remove_conflicts": "on", "reposition_on_load": "off", "intent_delay": "0", "intent_interval": "0", "intent_threshold": "7", "scrollto_offset": "50", "scrollto_duration": "1000", "responsive_breakpoint": "959", "accessible": "on", "retractor_display_strategy": "responsive", "touch_off_close": "on", "collapse_after_scroll": "on", "v": "3.2.5", "configurations": ["main"], "ajax_url": "http:\/\/quanticalabs.com\/wp_themes\/pressroom\/wp-admin\/admin-ajax.php", "plugin_url": "http:\/\/quanticalabs.com\/wp_themes\/pressroom\/wp-content\/plugins\/ubermenu\/" };
    /* ]]> */
    </script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/ubermenu/assets/js/ubermenu.min2072.js?ver=3.2.5') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-includes/js/wp-embed.min58aa.js?ver=5.0.7') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min40df.js?ver=5.6') }}'></script>
    <script type='text/javascript' src='{{ asset('wp-content/plugins/js_composer/assets/lib/bower/jquery-ui-tabs-rotate/jquery-ui-tabs-rotate.min40df.js?ver=5.6') }}'></script>
    @yield("scripts")
    <script>
   
    </script>
</body>

</html>