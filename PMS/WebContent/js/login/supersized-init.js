jQuery(function($){

    $.supersized({

        // Functionality
        slide_interval     : 6000,    // Length between transitions 图片切换间隔时间（毫秒）
        transition         : 1,    // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
        //图片切换效果，0-无，1-淡入淡出，2-向上滑动，3-向右滑动，4-向下滑动，5-向左滑动。
        transition_speed   : 3000,    // Speed of transition 切换速度，默认750。
        performance        : 1,    // 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)

        // Size & Position
        min_width          : 0,    // Min width allowed (in pixels)
        min_height         : 0,    // Min height allowed (in pixels)
        vertical_center    : 1,    // Vertically center background 是否让图像垂直居中，如果为0，则图像为顶端对齐。
        horizontal_center  : 1,    // Horizontally center background
        fit_always         : 0,    // Image will never exceed browser width or height (Ignores min. dimensions)
        fit_portrait       : 1,    // Portrait images will not exceed browser height
        fit_landscape      : 0,    // Landscape images will not exceed browser width

        // Components
        slide_links        : 'blank',    // Individual links for each slide (Options: false, 'num', 'name', 'blank')
        slides             : [    // Slideshow Images 所切换的图片集合，包括图片地址image，图片标题title，图片链接url。
                                 {image : './img/bg1.jpg'},
                                 {image : './img/bg2.jpg'},
                                 {image : './img/bg3.jpg'}
                             ]

    });

});
