jQuery(window).load(function(){
    jQuery("#portfolios").masonry({
        itemSelector: ".element",
        gutter: 0,
        columnWidth: Math.floor(jQuery("#portfolios").width()/ 3)
    });

    jQuery(window).resize(function () {
        jQuery("#portfolios").masonry({
            itemSelector: ".element",
            gutter: 0,
            columnWidth: Math.floor(jQuery("#portfolios").width()/ 3)
        });
    });
    jQuery("#portfolios").imagesLoaded( function(){
        jQuery("#portfolios").children(".element").children(".portfolio_type").each(function(){
            jQuery(this).addClass("slideUp");
        });
    });

    jQuery('#infinite_load_more_portfolios').click(function(){
        jQuery(this).hide();
        jQuery('#infinite_loading_portfolios').addClass('visible');

        var startItem = parseInt(jQuery(this).attr('data-start'));
        var loadItems = parseInt(jQuery(this).attr('data-items'));

        jQuery.ajax({
            url:"http://themes.themegoods.com/grandphotography/demo/wp-admin/admin-ajax.php",
            type:'POST',
            data:'action=grandphotography_script_metro_portfolio_pagination_load&start='+startItem+'&items='+loadItems+'&columns=3&type=metro&largecounter='+jQuery(this).attr('data-largecounter')+'&nextnumbertoadd='+jQuery(this).attr('data-nextnumbertoadd')+'&nexttrigger='+jQuery(this).attr('data-nexttrigger'),
            success:function(results) {
                if(results != '')
                {
                    var html = jQuery(results);
                    jQuery("#portfolios").append(html).masonry( 'appended', html ).masonry();

                    jQuery("#portfolios").imagesLoaded( function(){
                        jQuery("#portfolios").masonry( 'reloadItems' );
                        jQuery("#portfolios").masonry( 'layout' );
                    });

                    jQuery('#infinite_load_more_portfolios').attr('data-start', parseInt(startItem+loadItems));

                    jQuery(document).setiLightbox();
                    jQuery('#infinite_loading_portfolios').removeClass('visible');

                    var newStartItems = parseInt(startItem + loadItems);
                    if(newStartItems >= 12)
                    {
                        jQuery('#infinite_load_more_portfolios').remove();
                    }
                    else
                    {
                        jQuery('#infinite_load_more_portfolios').attr('data-start', newStartItems);
                        jQuery('#infinite_load_more_portfolios').show();

                        if(jQuery('#infinite_load_more_portfolios').length > 0)
                        {
                            Waypoint.destroyAll();
                            var waypoint = new Waypoint({
                                element: document.getElementById('infinite_load_more_portfolios'),
                                handler: function(direction) {
                                    jQuery('#infinite_load_more_portfolios').trigger('click');
                                },
                                offset: '100%'
                            });
                        }
                    }
                }
            }
        })
    });

    if(jQuery('#infinite_load_more_portfolios').length > 0)
    {
        var waypoint = new Waypoint({
            element: document.getElementById('infinite_load_more_portfolios'),
            handler: function(direction) {
                jQuery('#infinite_load_more_portfolios').trigger('click');
            },
            offset: '100%'
        });
    }

});
