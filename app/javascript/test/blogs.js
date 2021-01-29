$(window).on('load', function() {
    if (window.matchMedia('(max-width: 991px)').matches) {
        $('#side').addClass("hide");
        $('#top').removeClass("hide");
        $('#main').addClass("main-active");
    }
});

$(window).on('resize', function() {
    if (window.matchMedia('(max-width: 991px)').matches) {
        $('#side').addClass("hide");
        $('#top').removeClass("hide");
        $('#main').addClass("main-active");
    } else if (window.matchMedia('(min-width: 992px)').matches) {
        $('#side').removeClass("hide");
        $('#top').addClass("hide");
        $('#main').removeClass("main-active");
    }
});

$(document).on('turbolinks:load', function() {
    if (window.matchMedia('(max-width: 991px)').matches) {
        $('#side').addClass("hide");
        $('#top').removeClass("hide");
        $('#main').addClass("main-active");
    }
    $(function() {
        $('#contact').on('click', function() {
            $('.nav').toggleClass('nav-active');
        });
    });
    $(function() {
        $('#nav-close').on('click', function() {
            $('.nav').toggleClass('nav-active');
        });
    });
});
