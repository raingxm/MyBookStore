(function() {
    var highlightNav = function() {
        $('#navbar > ul > li').removeClass('active');
        if(isExist('#homePage')) {
            $('#navbar .home').addClass('active');
        } else if(isExist('#contactUsPage')) {
            $('#navbar .contact-us').addClass('active');
        }
    };

    var isExist = function(selector) {
        return $(selector).length >= 1;
    };

    $(document).ready(function() {
        highlightNav();
    });
})();