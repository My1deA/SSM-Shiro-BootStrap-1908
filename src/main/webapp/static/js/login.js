$(document).ready(function () {

    $(".head-nav-ul").mouseover(function () {
            $('.head-nav-sub').slideDown(130);
        });

    $(".head-nav-sub").mouseover(function () {
        $('.head-nav-sub').show();
    });

    $('.head-nav-sub').mouseout(function () {
        $('.head-nav-sub').hide();
    })


    $(".head-userinfo-normal").mouseover(function () {
        $('.head-login-hover').show();
    });
    $('.head-login-hover').mouseover(function () {
        $(this).show();
    })

    $('.head-login-hover').mouseout(function () {
        $(this).hide();
    })
});




