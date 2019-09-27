<%--
  Created by IntelliJ IDEA.
  User: MR丶小白
  Date: 2019-09-18
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>login</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" href="static/css/main.css">
</head>
<body id="goTop">

<%--导航栏--%>
<div class="head-start">
    <div class="head-normal">
        <%--logo--%>
        <a class="logo" href="/">
            <img src="static/image/logo-public.png" width="167" height="60">
        </a>
        <%--游戏资料--%>
        <ul class="head-nav-ul">
            <li>
                <span class="head-nav-cn">游戏资料</span>
                <span class="head-nav-en">GAME INFO</span>
            </li>
            <li>
                <span class="head-nav-cn">商城/合作</span>
                <span class="head-nav-en">STORE</span>
            </li>
            <li>
                <span class="head-nav-cn">社区互动</span>
                <span class="head-nav-en">COMMUNITY</span>
            </li>
            <li>
                <SPAN class="head-nav-cn">赛事官网</SPAN>
                <span class="head-nav-en">ESPORTS</span>
            </li>
            <li>
                <span class="head-nav-cn">自助系统</span>
                <span class="head-nav-en">SYSTEM</span>

            </li>
        </ul>

        <%--用户登录--%>
        <div class="head-userinfo-normal">

            <div class="head-userinfo-avatar">
                <img src="static/image/logo-user.png">
            </div>

            <div class="head-userinfo-brief">
                <p class="unlogin">亲爱的召唤师，欢迎<a href="/">登录</a></p>
            </div>
        </div>

        <%--App和搜素--%>
        <span class="head-app-normal">
                <a class="comm-icon-phone" href="/"></a>
            </span>
        <a class="head-search-btn">
            <i class="comm-icon-search"></i>
        </a>

        <div class="head-login-hover">
            <form action="<%=basePath%>/user/login" method="post">
                <div class="form-group form-inline">
                    <label style="color: white">Username</label>
                    <input type="text" class="form-control" name="username" placeholder="Username">
                </div>
                <div class="form-group form-inline">
                    <label style="color: white">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <div class="checkbox">
                    <label style="color: white">
                        <input type="checkbox"> Remember me
                    </label>
                </div>
                <button type="submit" class="btn btn-default" style="width: 200px;margin-left: 75px">Sign in</button>
            </form>
        </div>

    </div>
</div>

<%--登录图片--%>
<div class="comm-topact">
    <%--<img class="topact-big-img" src="//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_1f3adee5ea1e7157698bb44b52acd175/0">--%>
    <img class="topact-small-img"
         src="//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_97c0be5e7b15873562e21616610a296d/0">
</div>

<%--官网下拉子菜单--%>
<div class="head-nav-sub">

    <div class="head-nav-sub-innner">

        <ul id="ul_headNavSub">
            <li>
                <a class="head-nav-sub-a">游戏下载</a>
                <a class="head-nav-sub-a">新手指引</a>
                <a class="head-nav-sub-a">资料库</a>
                <a class="head-nav-sub-a">开发者基地</a>
                <a class="head-nav-sub-a">海克斯战利品库</a>
                <a class="head-nav-sub-a">英雄联盟宇宙</a>
            </li>
            <li>
                <a class="head-nav-sub-a">点券充值</a>
                <a class="head-nav-sub-a">周边商城</a>
                <a class="head-nav-sub-a">LOL桌游</a>
                <a class="head-nav-sub-a">LOL信用卡</a>
                <a class="head-nav-sub-a">网吧特权</a>
                <a class="head-nav-sub-a">电竞小说</a>
            </li>
            <li>
                <a class="head-nav-sub-a">官方社区</a>
                <a class="head-nav-sub-a">视频中心</a>
                <a class="head-nav-sub-a">官方论坛</a>
                <a class="head-nav-sub-a">官方微信</a>
                <a class="head-nav-sub-a">官方微博</a>
                <a class="head-nav-sub-a">玩家创作馆</a>
                <a class="head-nav-sub-a">玩家服务</a>
            </li>
            <li>
                <a class="head-nav-sub-a">LPL职业联赛</a>
                <a class="head-nav-sub-a">季中冠军赛</a>
                <a class="head-nav-sub-a">洲际系列赛</a>
                <a class="head-nav-sub-a">全球总决赛</a>
            </li>
            <li>
                <a class="head-nav-sub-a">联系客服</a>
                <a class="head-nav-sub-a">封号查询</a>
                <a class="head-nav-sub-a">体验服下载</a>
                <a class="head-nav-sub-a">峡谷之巅</a>
            </li>
        </ul>
    </div>
</div>

<%--主页内容--%>
<div class="g-zoombox" style=" zoom: 1;">
    <%--滚动--%>
    <div class="g-index-wrap1">
        <%--首页滚动图--%>
        <div class="m-prome">
            <%--<img src="//ossweb-img.qq.com/upload/adw/image/20190923/7ab0b574df1451ed4daca541a3c5c605.jpeg">--%>
            <ul class="prome-item-list">

                <li class="prome-item">
                    <a href="https://lol.qq.com/act/a20190909starguardian/index.html?e_code=490608&idataid=277326#nav6">
                        <img src="//ossweb-img.qq.com/upload/adw/image/20190923/7ab0b574df1451ed4daca541a3c5c605.jpeg">
                    </a>
                </li>

                <li class="prome-item">
                    <a href="https://lol.qq.com/act/a20190830elderwood/index.html?e_code=490610&idataid=277327">
                        <img src="//ossweb-img.qq.com/upload/adw/image/20190923/03bf9c68916c6ecec9f5950a4dda0ad7.jpeg">
                    </a>
                </li>
                <li class="prome-item">
                    <a href="https://lol.qq.com/act/a20190909starguardian/index.html?e_code=490250&idataid=276936">
                        <img src="//ossweb-img.qq.com/upload/adw/image/20190919/0e2bc3893da078b87a0e15f45c30a8ac.jpeg">
                    </a>
                </li>
                <li class="prome-item">
                    <a href="https://lol.qq.com/act/a20190909starguardian/index.html?e_code=490251&idataid=276937">
                        <img src="//ossweb-img.qq.com/upload/adw/image/20190919/cbe05dd92fcebc03b67ee8d3f813c34f.jpeg">
                    </a>
                </li>
                <li class="prome-item">
                    <a href="https://lolriotmall.qq.com/act/a20190909igmini/index.htm?ADTAG=lolriotmall.pc.lolgw.ad&e_code=489994&idataid=276582">
                        <img src="//ossweb-img.qq.com/upload/adw/image/20190916/e4a5494254f8ff27d1d1fab35f925d45.jpeg">
                    </a>
                </li>
            </ul>

            <div class="prome-title-list">
                <span class="title span_select">小小英雄第四系列</span>
                <span class="title">永恒之森2019</span>
                <span class="title">星之守护者2019</span>
                <span class="title">兑换妮蔻皮肤</span>
                <span class="title">iG手办装</span>
            </div>

        </div>

        <%--新闻公告--%>
        <div class="m-news">
            <div class="m-news-tab">
                <ul class="m-news-title">
                    <li class="select">综合</li>
                    <li>公告</li>
                    <li>赛事</li>
                    <li>攻略</li>
                    <li>社区</li>
                </ul>
            </div>
            <div class="m-news-content">
                <ul class="m-news-content-ul select">
                    <li class="frist">
                        9月26日凌晨三点9.19云顶之奕版本更新公告1
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>9月26日凌晨3点停机版本更新公告</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>2019全球总决赛赛程公布</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>英雄联盟全球十周年庆典”线下活动玩家招募开启</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>2019全球总决赛抽签分组结果出炉</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>路易威登和全球总决赛展开合作关系</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>LPL无畏出征：Letme与潘晓婷畅谈竞技1</div>
                        <span class="item-time">09-25</span>
                    </li>
                </ul>
                <ul class="m-news-content-ul">
                    <li class="frist">
                        9月26日凌晨三点9.19云顶之奕版本更新公告
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>9月26日凌晨3点停机版本更新公告</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>2019全球总决赛赛程公布</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">新闻</span>
                        <div>9月27日免费英雄更换公告</div>
                        <span class="item-time">09-27</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>游戏环境公示以及吃饭名单9月19日</div>
                        <span class="item-time">09-20</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>9月其日比赛服下载地址更新公告</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>9月20日免费英雄更换公告</div>
                        <span class="item-time">09-25</span>
                    </li>
                </ul>
                <ul class="m-news-content-ul">
                    <li class="frist">
                        2019全球总决赛赛程公告
                    </li>
                    <li class="newsitem">
                        <span class="item-type">娱乐</span>
                        <div>小组赛赛程分析 10月13号三大焦点战爆发</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">赛事</span>
                        <div>RNG和iG粉丝自制友好条约引人点赞</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>电子竞技没有死亡之组 自制S9出征短片</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>2019全球总决赛抽签分组结果出炉</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>路易威登和全球总决赛展开合作关系</div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>Eyes On: 聚焦底特律</div>
                        <span class="item-time">09-25</span>
                    </li>
                </ul>
                <ul class="m-news-content-ul">
                    <li class="frist">
                        新英雄卡莎适配阵容 9.19云顶新增装备解析
                    </li>
                    <li class="newsitem">
                        <span class="item-type">娱乐</span>
                        <div>
                            韩服王者五大上分套路 打野奇亚娜领衔
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">赛事</span>
                        <div>
                            9.18云顶上分套路推荐：虚空斗刺强势崛起
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            极地暗影强度翻倍 寒冰主C三大游侠阵容
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            天使加强重回T1 韩服四大高胜英雄解析
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            9.18五大高胜率上单 玛尔扎哈奎因强势归来
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            9.18五大高胜率上单 玛尔扎哈奎因强势归来
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                </ul>
                <ul class="m-news-content-ul">
                    <li class="frist">
                        9.18云顶S级装备适配阵容！飓风成游侠新宠
                    </li>
                    <li class="newsitem">
                        <span class="item-type">娱乐</span>
                        <div>
                            新手向攻略，轻轻松松上白金
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">赛事</span>
                        <div>
                            云顶之弈：究极爆伤流杰斯，鬼畜攻速伤害破万
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            极地暗影强度翻倍 寒冰主C三大游侠阵容
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            约德尔换形师登顶S级！8人口6羁绊
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            9.18云顶上分套路推荐：虚空斗刺强势崛起
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                    <li class="newsitem">
                        <span class="item-type">公告</span>
                        <div>
                            9.18云顶三大阵容 狂野双龙实力上榜
                        </div>
                        <span class="item-time">09-25</span>
                    </li>
                </ul>

            </div>

            <a class="btn-info">
                <span class="c1">阅读更多</span>
                <span class="c2">最新资讯</span>
                <i class="more-arrow"></i>
            </a>
        </div>
        <%--热门活动--%>
        <div class="m-act">
            <div class="m-act-tab">
                <h2 class="m-act-tab-h2">热门活动</h2>
                <div class="m-act-tab-title">
                    <ul class="m-act-tab-ul">
                        <li class="select">正在进行</li>
                        <li>商城特惠</li>
                        <li>长期活动</li>
                    </ul>
                    <a class="m-act-tab-a">更多-></a>
                </div>
            </div>

            <div class="m-act-list">
                <ul class="select">
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568278032_uploadnewsImg.jpg"
                             alt="英雄联盟特权网吧城市赛" width="193" height="207">
                        <p>英雄联盟特权网吧城市赛1</p>
                        <a class="overtime">71天后结束</a>
                        <a class="herf-mask"
                           href="https://cafe.qq.com/tpl/lol/act/act20190906netbarleague.html?e_code=489721"
                           target="_blank" title="英雄联盟特权网吧城市赛"
                           onclick="PTTSendClick('act','act-10191','英雄联盟特权网吧城市赛')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568118948_uploadnewsImg.jpg"
                             alt="为LPL出征战队加油" width="193" height="207">
                        <p>为LPL出征战队加油</p>
                        <a class="overtime">66天后结束</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190813expedition/index.html?e_code=489234"
                           target="_blank" title="为LPL出征战队加油"
                           onclick="PTTSendClick('act','act-10167','为LPL出征战队加油')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1569220713_uploadnewsImg.jpg"
                             alt="地狱火2019" width="193" height="207">
                        <p>地狱火2019</p>
                        <a class="overtime">55天后结束</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190904hellfire/index.html?e_code=490606"
                           target="_blank" title="地狱火2019" onclick="PTTSendClick('act','act-10233','地狱火2019')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568864564_uploadnewsImg.jpg"
                             alt="永恒之森2019" width="193" height="207">
                        <p>永恒之森2019</p>
                        <a class="overtime">3天后结束</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190830elderwood/index.html?e_code=490263"
                           target="_blank" title="永恒之森2019" onclick="PTTSendClick('act','act-10210','永恒之森2019')"></a>
                    </li>
                </ul>
                <ul>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568305303_uploadnewsImg.jpg"
                             alt="小小英雄第四系列" width="193" height="207">
                        <p>小小英雄第四系列</p>
                        <a class="overtime">长期活动</a>
                        <a class="herf-mask"
                           href="https://lol.qq.com/act/a20190909starguardian/index.html?e_code=489818#nav6"
                           target="_blank" title="小小英雄第四系列" onclick="PTTSendClick('act','act-10116','小小英雄第四系列')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1569220713_uploadnewsImg.jpg"
                             alt="地狱火2019" width="193" height="207">
                        <p>地狱火2019</p>
                        <a class="overtime">11天后结束</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190904hellfire/index.html?e_code=490606"
                           target="_blank" title="地狱火2019" onclick="PTTSendClick('act','act-10233','地狱火2019')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568864564_uploadnewsImg.jpg"
                             alt="永恒之森2019" width="193" height="207">
                        <p>永恒之森2019</p>
                        <a class="overtime">7天后结束</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190830elderwood/index.html?e_code=490263"
                           target="_blank" title="永恒之森2019" onclick="PTTSendClick('act','act-10210','永恒之森2019')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568884971_uploadnewsImg.jpg"
                             alt="iG手办尾款" width="193" height="207">
                        <p>iG手办尾款</p>
                        <a class="overtime">4天后结束</a>
                        <a class="herf-mask"
                           href="https://lolriotmall.qq.com/act/a20190909igmini/index.htm?ADTAG=lolriotmall.pc.lolhdzx.ad&amp;e_code=490312"
                           target="_blank" title="iG手办尾款" onclick="PTTSendClick('act','act-10211','iG手办尾款')"></a>
                    </li>
                </ul>
                <ul>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1568051751_uploadnewsImg.jpg"
                             alt="英雄联盟信誉分查询" width="193" height="207">
                        <p>英雄联盟信誉分查询</p>
                        <a class="overtime">长期活动</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190528lolscore/?e_code=489313"
                           target="_blank" title="英雄联盟信誉分查询" onclick="PTTSendClick('act','act-10171','英雄联盟信誉分查询')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1565318029_uploadnewsImg.jpg" alt="福来Day"
                             width="193" height="207">
                        <p>福来Day</p>
                        <a class="overtime">长期活动</a>
                        <a class="herf-mask" href="https://lol.qq.com/act/a20190403koifish/index.html?e_code=469976"
                           target="_blank" title="福来Day" onclick="PTTSendClick('act','act-10048','福来Day')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="//ossweb-img.qq.com/images/clientpop/act/lol_1554279028_uploadnewsImg.jpg"
                             alt="《校园解说大赛》等你发声！" width="193" height="207">
                        <p>《校园解说大赛》等你发声！</p>
                        <a class="overtime">长期活动</a>
                        <a class="herf-mask" href="https://www.ccel.org.cn/loljs" target="_blank" title="《校园解说大赛》等你发声！"
                           onclick="PTTSendClick('act','act-7795','《校园解说大赛》等你发声！')"></a>
                    </li>
                    <li class="m-act-item">
                        <img src="http://ossweb-img.qq.com/images/clientpop/act/lol_1539328710_uploadnewsImg.jpg"
                             alt="高校自发赛" width="193" height="207">
                        <p>高校自发赛</p>
                        <a class="overtime">长期活动</a>
                        <a class="herf-mask" href="https://lpl.qq.com/es/lcl/zf/?e_code=443488" target="_blank"
                           title="高校自发赛" onclick="PTTSendClick('act','act-8758','高校自发赛')"></a>
                    </li>
                </ul>
            </div>

        </div>
        <%--游戏功能导航--%>
        <div class="m-gamefunc-nav">
            <ul class="slide-nav-li">
                <li class="herf-down">
                    <video class="side-down-video" autoplay="" loop="" muted="" width="366" height="168">
                        <source src="//ossweb-img.qq.com/images/lol/v3/btn-download.mp4" type="video/mp4">
                    </video>
                </li>
                <li class="btn-flashmen p1">新手必备</li>
                <li class="btn-flashmen p2">领取中心</li>
                <li class="p3">在线客服</li>
                <li class="p3">秩序殿堂</li>
                <li class="p3">游戏资料</li>
                <li class="p3">峡谷之巅</li>
                <li class="p3">微信绑定</li>
                <li class="p3">攻略中心</li>
                <li class="p3">LOL宇宙</li>
                <li class="p3">玩家社区</li>
            </ul>


        </div>
    </div>

</div>


<%--侧边栏--%>
<div class="right-nav">
    <ul>
        <li class="right-nav-li"><span><i class="right-nav-i1"></i></span></li>
        <li class="right-nav-li"><span><i class="right-nav-i2"></i></span></li>
        <li class="right-nav-li"><span><i class="right-nav-i3"></i></span></li>
        <li class="right-nav-li"><span><i class="right-nav-i4"></i></span></li>
        <li class="right-nav-li"><span><i class="right-nav-i5"></i></span></li>
        <li class="right-nav-li"><span><i class="right-nav-i6"><a href="#goTop"><img src="//ossweb-img.qq.com/images/lol/v3/polo.gif" alt="魄罗"></a></i></span></li>
    </ul>

</div>


</body>

<script src="static/js/jquery-3.3.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/login.js"></script>
<script src="static/js/main.js"></script>

</html>


<%--<div class="ultest">
    <ul>
        <li>小小英雄第四系列1</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
    </ul>
</div>

<div class="ultest2">
    <ul class="ultest2-ul">
        <li>小小英雄第四系2列2</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
        <li>小小英雄第四系列</li>
    </ul>
</div>--%>

<%--<shiro:authenticated>
    登录成功，用户名：<shiro:principal></shiro:principal>
</shiro:authenticated>

<shiro:notAuthenticated>

<div class="form-center">
    <form action="<%=basePath%>/user/login" method="post">
        <div class="form-group form-inline">
            <label>Username</label>
            <input type="text" class="form-control" name="username" placeholder="Username">
        </div>
        <div class="form-group form-inline">
            <label>Password</label>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox"> Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-default" style="width: 200px;margin-left: 75px">Sign in</button>
    </form>
<div>
 </shiro:notAuthenticated>--%>