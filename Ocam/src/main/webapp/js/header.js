$(document).ready(function () {
    $('.arrow-up').click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 800);
        return false;
    });
    $('.arrow-down').click(function () {
        $('html, body').animate({
            scrollTop: $(document).height()
        }, 800);
        return false;
    });
});
