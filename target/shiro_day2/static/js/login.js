$(document).ready(function () {
    //鼠标移到标题 则下面的面板提示会滑出
    $(".head-nav-ul").mouseover(function () {
            $('.head-nav-sub').slideDown(130);
        });
    //鼠标在滑出出的面板中 不会回退
    $(".head-nav-sub").mouseover(function () {
        $('.head-nav-sub').show();
    });
    //鼠标移出的面板 面板消失
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




