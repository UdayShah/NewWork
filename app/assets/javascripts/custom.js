! function(e) {
    "use strict";
    e(window).on("load", function() {
        e("#spinner").animate({
            opacity: 0
        }, 400, function() {
            e("#spinner").css({
                display: "none"
            })
        })
    }), SVGInjector(document.querySelectorAll("img.inject-inline")), e("body").data("scroll-animation") === !0 && new WOW({
        mobile: !1
    }).init(), e("a.page-scroll").bind("click", function(a) {
        var i = e(this);
        e("html, body").stop().animate({
            scrollTop: e(i.attr("href")).offset().top - 50
        }, 1250, "easeInOutExpo"), a.preventDefault()
    }), e(".navbar-collapse ul :not(li.dropdown) a").click(function() {
        e(".navbar-toggle:visible").click()
    }), e("#mainNav").affix({
        offset: {
            top: 100
        }
    }), window.sr = ScrollReveal(), sr.reveal(".sr-icons", {
        duration: 600,
        scale: .3,
        distance: "0px"
    }, 200), sr.reveal(".sr-button", {
        duration: 1e3,
        delay: 200
    }), sr.reveal(".sr-contact", {
        duration: 600,
        scale: .3,
        distance: "0px"
    }, 300), e(".popup-gallery").magnificPopup({
        delegate: "a",
        type: "image",
        tLoading: "Loading image #%curr%...",
        mainClass: "mfp-img-mobile",
        gallery: {
            enabled: !0,
            navigateByImgClick: !0,
            preload: [0, 1]
        },
        image: {
            tError: '<a href="%url%">The image #%curr%</a> could not be loaded.'
        }
    }), e(".person-selector>.person").click(function() {
        var a = this;
        e(".single-quote--active").animate({
            opacity: 0
        }, 300, function() {
            e(".single-quote--active").removeClass("single-quote--active").css({
                opacity: 1
            }), e("#" + a.id + "-quote").addClass("single-quote--active")
        }), e(".person--active").animate({
            width: 45,
            height: 45
        }, 300, function() {
            e(".person--active").removeClass("person--active")
        }), e(a).animate({
            width: 56,
            height: 56,
            "border-radius": 28
        }, 300, function() {
            e(a).addClass("person--active")
        })
    })
}(jQuery);
