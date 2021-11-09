jQuery(document).ready(function(){
    jQuery('#posts').flexslider({
        animation: "slide",
        animationLoop: true,
        itemMargin: 0,
        minItems: 1,
        maxItems: 1,
        controlNav: true,
        smoothHeight: false,
        slideshow: 0,
        animationSpeed: 400,
        slideshow: 1,
        slideshowSpeed: 5000,
        move: 1
    });
});

jQuery(document).ready(function() {
    fixFlexsliderHeightPosts();
});

jQuery(window).load(function() {
    fixFlexsliderHeightPosts();
});

jQuery(window).resize(function() {
    fixFlexsliderHeightPosts();
});

function fixFlexsliderHeightPosts() {
    jQuery('#posts').each(function(){
        var sliderHeight = 0;
        jQuery(this).find('.slides > li').each(function(){
            slideHeight = jQuery(this).height();
            if (sliderHeight < slideHeight) {
                sliderHeight = slideHeight;
            }
        });
        jQuery(this).find('.flex-viewport').css({'height' : sliderHeight});
    });
}