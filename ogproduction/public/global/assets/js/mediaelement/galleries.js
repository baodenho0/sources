jQuery(window).load(function(){
    jQuery("#menu_gallery_wrapper").imagesLoaded( function(){
        jQuery("#menu_gallery_wrapper").children(".element").children(".gallery_type").each(function(){
            jQuery(this).addClass("slideUp");
        });
    });

});
