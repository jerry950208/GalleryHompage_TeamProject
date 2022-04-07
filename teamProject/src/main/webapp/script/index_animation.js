/* 애니메이션 효과 */
jQuery(function ($) {
    $("#home_Frame").css("display", "none");
    $("#home_Frame").fadeIn(2000);
    $("a.transition").click(function (event) {
        event.preventDefault();
        linkLocation = this.href;
        $("#home_Frame").fadeOut(1000, redirectPage);
    });

    function redirectPage() {
        window.location = linkLocation;
    }
});