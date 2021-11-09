<!DOCTYPE html>
<html lang="vn">

<head>
    <title>@yield('title')</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="shortcut icon" href="{{ asset('uploads/logo.png') }}" />
    <link rel='stylesheet' id='dashicons-css' href="{{ asset('global/assets/css/dashicons.min.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='post-views-counter-frontend-css' href="{{ asset('global/assets/plugins/post-views-counter/css/frontend.css') }}" type='text/css' media='all' />
    <link href="{{ asset('/global/assets/plugins/revslider/global/assets/css/settings.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-reset-css-css' href="{{ asset('global/assets/grandphotography/css/reset.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-wordpress-css-css' href="{{ asset('global/assets/grandphotography/css/wordpress.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-animation-css-css' href="{{ asset('global/assets/grandphotography/css/animation.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='ilightbox-css' href="{{ asset('global/assets/grandphotography/css/ilightbox/ilightbox.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='jquery-ui-css' href="{{ asset('global/assets/grandphotography/css/jqueryui/custom.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='mediaelement-css' href="{{ asset('global/assets/js/mediaelement/mediaelementplayer.min.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='flexslider-css' href="{{ asset('global/assets/grandphotography/js/flexslider/flexslider.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='tooltipster-css' href="{{ asset('global/assets/grandphotography/css/tooltipster.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='odometer-theme-css' href="{{ asset('global/assets/grandphotography/css/odometer-theme-minimal.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-screen-css' href="{{ asset('global/assets/grandphotography/css/screen.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-centeralgoo-css' href="{{ asset('global/assets/grandphotography/css/menus/centeralogo.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='fontawesome-css' href="{{ asset('global/assets/grandphotography/font-awesome/css/font-awesome.min.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-script-custom-css-css' href="{{ asset('global/assets/css/customs.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='grandphotography-script-responsive-css-css' href="{{ asset('global/assets/grandphotography/css/grid.css') }}" type='text/css' media='all' />
    <link rel='stylesheet' id='kirki_google_fonts-css' href='https://fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic%7CRoboto+Condensed%3A300%2C300italic%2Cregular%2Citalic%2C700%2C700italic&#038;subset=cyrillic-ext%2Cgreek-ext%2Clatin-ext%2Cvietnamese%2Clatin%2Ccyrillic%2Cgreek' type='text/css' media='all' />
    <link rel='stylesheet' id='kirki-styles-global-css' href="{{ asset('global/assets/grandphotography/modules/kirki/assets/css/kirki-styles.css') }}" type='text/css' media='all' />
    <script type='text/javascript' src="{{ asset('global/assets/js/jquery/jquery.js') }}"></script>
    <script type='text/javascript' src="{{ asset('global/assets/js/jquery/jquery-migrate.min.js') }}"></script>
    <script type='text/javascript' src="{{ asset('global/assets/plugins/revslider/global/assets/js/jquery.themepunch.tools.min.js') }}"></script>
    <script type='text/javascript' src="{{ asset('global/assets/plugins/revslider/global/assets/js/jquery.themepunch.revolution.min.js') }}"></script>
    @yield('styles')
</head>

<body class="page-template-default page page-id-4043 page-child parent-pageid-3602 ppb_enable">
    <!-- Begin template wrapper -->
    <div id="wrapper" class="hasbg transparent">
        @include('public.layouts.header')
        <div class="ppb_wrapper">
            @yield('wrapper')
        </div>
        <!-- <div id="overlay_background"></div> -->
        <!-- <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.requestAnimationFrame.js') }}"></script> -->
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.mousewheel.min.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/ilightbox.packed.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.easing.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/waypoints.min.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.isotope.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.masory.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.tooltipster.min.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jarallax.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.stellar.min.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/custom_plugins.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/custom.js') }}"></script>
        <!--<script type='text/javascript' src="{{ asset('global/assets/js/wp-embed.min.js') }}"></script>
         <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.cycle2.min.js') }}"></script> 
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/custom_cycle.js') }}"></script>-->
        <script type='text/javascript' src="{{ asset('global/assets/js/galleries.js') }}"></script>
        <!-- <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/custom_onepage.js') }}"></script> -->
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jarallax-video.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/js/portfolios.js') }}"></script>
        <script type="text/javascript" src="{{ asset('global/assets/plugins/woocommerce/assets/js/flexslider/jquery.flexslider.min.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/js/posts.js') }}"></script>
        <!-- <script type='text/javascript' src='http://themes.themegoods.com/grandphotography/demo/wp-admin/admin-ajax.php?action=grandphotography_script_grid_gallery_pagination_click&#038;columns=3&#038;id=menu_gallery_wrapper&#038;gallery_id=1'></script> -->
        <script type='text/javascript' src="{{ asset('global/assets/js/galleries.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/modernizr.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.gridrotator.js') }}"></script>
        <!-- <script type='text/javascript' src='http://themes.themegoods.com/grandphotography/demo/wp-admin/admin-ajax.php?action=grandphotography_script_gridrotator&#038;grid=footer_photostream&#038;rows=1'></script> -->
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/jquery.cookie.js') }}"></script>
        <script type='text/javascript' src="{{ asset('global/assets/grandphotography/js/demo.js') }}"></script>
    </div>
</body>

</html>