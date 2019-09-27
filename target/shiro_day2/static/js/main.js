$(document).ready(function() {
    //主界面轮播 start
    var index = 0;
    var time = 3000;
    var timer = null;
    var length = $('.prome-title-list').children.length;//有多少张图片
    var width = 820;

    auto();//无脑自动循环



    $('.prome-title-list span').hover(function () {
        clearInterval(timer);
        index = $(this).index();
        $(this).addClass("span_select").siblings().removeClass("span_select");
        $(".prome-item-list").animate({left: -index * width}, 300);

    }, function () {
        auto(timer);
    });

    function auto() {
        timer = setInterval(function () {
            nextPicture();
            nextTile();
        }, time);
    }

    function nextPicture() {
        index++;
        if (index >= 5) {
            /*$(".prome-item-list").animate({left:-(index)*width},300);*/
            index = 0;
            $(".prome-item-list").animate({left: 0}, 0);
        }

        $('.prome-item-list').animate({left: -index * width}, 300);
    }


    function nextTile() {
        $('.prome-title-list span').eq(index).addClass("span_select").siblings().removeClass("span_select");
    }

    function prePicture() {
        index--;
        if (index < 0) {
            index = length;
            $(".prome-item-list").animate({left: -(index) * width}, 0);
        }

        $('.prome-item-list').animate({left: -index * width}, 500);
    }

    //主界面轮播 end
    //新闻界面
    $('.m-news-title li').mouseover(function () {
        /*alert(123);*/
        var tilte_index = $(this).index();
        $(this).addClass("select").siblings().removeClass("select");
        $('.m-news-content .m-news-content-ul').eq(tilte_index).addClass("select").siblings().removeClass("select");
    });

    //活动界面
    $('.m-act-tab-ul li').mouseover(function () {
        /*alert(123);*/
        var act_index=$(this).index();
        $(this).addClass("select").siblings().removeClass("select");
        $('.m-act-list>ul').eq(act_index).addClass("select").siblings().removeClass("select");
    });
    //活动界面 图片移动
    $('.m-act-item').hover(function () {
        $(this).animate({top:'-10px'},"fast");
    },function () {
        /*$(this).animate({top:'-10px'},"fast");*/
        $(this).animate({top:'0px'},"fast");
    });

});




//第一种实现方法
/*$(document).ready(function(){
    var index=0;//记录下标
    var time=setInterval(move,3000);//记录时间

    //对每一个 轮播的  标题 检测 鼠标动作
    $('.prome-title-list span').hover(function () {
        clearInterval(time);
       $(this).addClass('span_select').siblings().removeClass('span_select');
       index=$(this).index();
       $('.prome-item-list li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut(0);
    },function () {
        time=setInterval(move,3000);
    });


    //自动滑动
    function move() {

        index++;
        if(index==5){
            index=0;
        }
        //分别将图片 和 标题 更新
        //图片更新 先将原来的停下 再渐入
        $('.prome-item-list li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut();
        $('.prome-title-list span').eq(index).addClass("span_select").siblings().removeClass("span_select");
    }

});*/




