<%@ page language="java" import="java.util.*" pageEncoding="GB2312" %>
<%@ page import="javax.swing.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta content="telephone=no" name="format-detection" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <meta name="full-screen" content="yes">
    <link rel="stylesheet" href="css/cui.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/less.css" />
</head>
<jsp:useBean id="user" class="com.tanrui.bean.get_user_info"></jsp:useBean>
<%
    HttpSession session1 = request.getSession(false);
    if (session1.getAttribute("username") != "" && session1.getAttribute("username") != null){
        user.setUsername((String) session1.getAttribute("username"));
        user.setPassword((String) session1.getAttribute("password"));
    }else {
        JOptionPane.showMessageDialog(null, "您尚未登录，请前往登录界面登录！");
        response.sendRedirect("login_index.jsp");
    }
%>

<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index1"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
                <li><a href="course_research.jsp" >课程搜索</a></li>
                <li><a href="course_comments" >课程评价</a></li>
                <li><a href="contact.jsp">网站留言</a></li>

            </ul>
            欢迎 <a href="#"><%=session1.getAttribute("username")%></a> 来到同济大学选修百科网
        </div>
    </div>
</div>
<div class="c"></div>
<div id="m-hd">
    <a href="index1" class="m-logo"><img src="images/logo.png" alt=""></a>
    <div class="m-trigger"></div>
    <ul class="m-nav">
        <li><a href="index.jsp" class="v1">首页 </a></li>
        <li><a href="course_service.jsp" >课程服务</a></li>
        <li><a href="excellent_course.jsp" >精品课程</a></li>
        <li><a href="course_research.jsp" >课程搜索</a></li>
        <li><a href="course_comments" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/14415956833641.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp" id="whous">
    <div class="tit-i">
        <h3>我们是谁</h3>
        <h5>about <span>TUNIU</span></h5>
    </div>
    <div class="c"></div>
    <div class="about-info">
        网博思创网络技术（北京）有限公司，简称艾玛，英文名称TUNIU。<br />
        <p>
            艾玛是由从事多年互联网界研究的海外归国人员于2007年创办，拥有强大的运营团队和技术团队，专注于高端网站定制、企业网站建设、手机移动网站建设、手机APP定制开发、应用系统开发等，为企业提供全球化互联网解决方案。
        </p>
        <p>
            公司自创立以来，<span>已成功为500多家企事业单位、政府机关提供过高端互联网服务，其中包括中软集团、大众汽车、思科、中国银行、华夏银行、中赫集团、碧生源、朗波尔、凤凰瑜伽、华夏银行、华夏典当行、华胜天成、宝瑞通典当行、传媒大学、中粮集团、国际安全信息中心、国家经济中心、国家统计局、等等。</span>
        </p>
        对艾玛来说，客户是具有排他性、唯一性的。我们强调个性定制化的方式与您沟通，通过创意、新技术新媒体的结合运用，为您提供整合的解决方案与全方位的视觉传播服务。<br />
        艾玛洞悉中国互联网发展轨迹的同时，以最为专业的网络新思维去深入思考网络在中国企业、中国互联网运营商以及网民中的真正价值，坚定不移的扛起中国网络创新的大旗，致力于揭开网络应用的新篇章！<br />
    </div>
    <ul class="ul-about ul-show">
        <li class="li1">
            <div class="block">
                <img src="images/c1.png" alt="网博思创">
                <img src="images/c2.png" alt="">
                <img src="images/c3.png" alt="">
                <img src="images/c4.png" alt="">
                <img src="images/c5.png" alt="">
                <img src="images/c6.png" alt="">
                <img src="images/c7.png" alt="">
                <img src="images/c8.png" alt="">
            </div>
            <div class="c"></div>
            <h3>量身打造</h3>
            <em></em>
            <!--<p>根据用户的需求、市场状况、企业情况提供专业化的网<br />站策划、设计、技术和营销解决方案。</p>-->
            <p>
                针对不同企业状况、客户特殊需求等量身打造，从专业化的建站方案定制<span>，独一无二的视觉效果设计，到易于SEO优化的规范化代码编写，易于操作的人性化管理后台，无不体现“定制”的意义。</span>
            </p>				</li>
        <li class="li2">
            <div class="block">
                <img src="images/t1.png" alt="" data-top-center="background-position:0px 0px;" data-bottom-center="background-position:141px 0px;">
                <img src="images/t2.png" alt="网博思创">
                <img src="images/t3.png" alt="">
                <img src="images/t4.png" alt="">
                <img src="images/t5.png" alt="">
                <img src="images/t6.png" alt="">
                <img src="images/t7.png" alt="">
                <img src="images/t8.png" alt="">
                <img src="images/t9.png" alt="">
            </div>
            <div class="c"></div>
            <h3>领先设计</h3>
            <em></em>
            <p>
                <span>为客户定制适合自己的互联网形象，</span>
            </p>
            <p>
                <span>尊重访问者视觉体验和浏览习惯，用户体验友好，</span>
            </p>
            <p>
                注重信息<span>架构分析，界面设计、互动设计和</span>
            </p>
            <p>
                <span>内容制作，为客户提供</span><span>高价值的平台。</span>
            </p>
            <p>
	<span><br />
</span>
            </p>				</li>
        <li class="li3">
            <div class="block">
                <img src="images/b1.png" alt="TUNIU">
                <img src="images/b2.png" alt="">
                <img src="images/b3.png" alt="">
                <img src="images/b4.png" alt="">
            </div>
            <div class="c"></div>
            <h3>全网开发</h3>
            <em></em>

            <p>
                <span>全网是一个新概念，是互联网时代的必然产物，</span><span>更是企业在未来几年内的生存之道。</span><span>艾玛</span><span>为客户提供全方位全网开发。</span><span>网站建设、微站设计、微信</span><span>公众平台开发，同时完整的将互联</span><span>网各平台结合，实现一站式管理。</span>
            </p>
            <p>
                <br />
            </p>
            <p>
            </p>				</li>
    </ul>
</div>
<div class="c"></div>
<div class="customer fix" id="ourcus">
    <div class="wp">
        <div class="tit-i tit-i-1">
            <h3>我们服务的客户</h3>
            <h5>our <span>customer</span></h5>
        </div>
        <ul class="ul-customer">
            <li><a href=""><b></b><img src="images/14417772351016.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417772151236.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417777895049.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417773256917.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770416979.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770728965.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770931301.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417685061923.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417778261716.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417773644618.png" alt="" width="234" height="87"></a></li>
        </ul>
    </div>
</div>
<div class="team" id="ourteam">
    <div class="wp">
        <div class="tit-i">
            <h3>我们的团队</h3>
            <h5>our <span>team</span></h5>
        </div>
    </div>
    <div class="flexslider">
        <ul class="slides">
            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">商务策划</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        不只是建站，更提供有价值的思路和整体服务。<br />
                        艾玛人不断深入对各类行业属性以及商业模式的探索，全面了解企业现状、深入挖掘品牌价值、专业策划并准确全是产品价值。
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">加入我们</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o5.png" alt="">
                        <img data-animate="fadeInRight" data-delay="0.9" class="animated" src="images/o6.png" alt="">
                    </div>
                </div>
            </li>
            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">项目执行</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        主要负责网站建设项目的开发管理和流程监控工作。艾玛的整个项目组对工作是非常细致严谨的，项目进行中随时与客户保持商量和沟通，双方配合在最短的时间内顺利完成项目开发工作。
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">加入我们</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o7.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o8.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o9.png" alt="">
                        <img data-animate="fadeInRight" data-delay="1.5" class="animated" src="images/o10.png" alt="">
                        <img data-animate="fadeInDown" data-delay="1.8" class="animated" src="images/o11.png" alt="">
                    </div>
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">设计师</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        我们喜爱创新，对创意设计有着极高的热情，并准备着为一个好的点子通宵达旦。我们不仅提供漂亮的设计，更知道设计是一种方法或策略，而非仅仅是美术自由，设计载体是品牌，强调设计的实用性。
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">加入我们</a></p>
                    </div>
                </div>
                <div class="pic">
                    <img data-animate="fadeInRight" data-delay="0.5" class="animated" src="images/o18.png" alt="">
                    <img data-animate="fadeInRight" data-delay="1.5" class="animated" src="images/o21.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o19.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o20.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="1.8" class="animated" src="images/o22.png" alt="">
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">Web前端工程师</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        根据已确认的设计稿进行每一个页面的制作。我们会按照我们的W3C制作标准进行web开发，使得更简易、可方便调节、各浏览器兼容性强、可扩展等，让用户体验达到一定高度！
                    </p>
                        <p class="animated fadeInDown">
                            我们将以最大程度上减少页面代码，使爬行蜘蛛能带走更多有用有价值的信息。并且我们将严格遵守标准CSS命名规则，使搜索引擎能够快速的认知网页内容板块结构，快速收录！
                        </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">加入我们</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o12.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o14.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o13.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.5" class="animated" src="images/o15.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.8" class="animated" src="images/o17.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="2.2" class="animated" src="images/o16.png" alt="">
                    </div>
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">程序员</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        从事程序开发、维护的专业人员。拥有强大的开发力量，依照客户需求及工作流程来定制专属平台<span>，优化网站结构，精简程序代码，清晰的层次架构.</span>
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">加入我们</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInDown" data-delay="0.5" class="animated" src="images/o1.png" alt="">
                        <img data-animate="fadeInUp" data-delay="0.8" class="animated" src="images/o2.png" alt="">
                        <img data-animate="fadeInUp" data-delay="1.2" class="animated" src="images/o3.png" alt="">
                        <img data-animate="fadeInDown" data-delay="1.5" class="animated" src="images/o4.png" alt="">
                    </div>
                </div>
            </li>

        </ul>
        <em></em>
    </div>
</div>
</div>

<div class="c"></div>
<div id="fd" class="index-fd pr">
    <div class="map-bg3"></div>
    <div class="wp">
        <div class="fd-top">
            <dl>
                <dt>联系我们</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="https://weibo.com/guitoubing" class="sina"></a><span class="weixin-pic"><img src="images/ewm.png" alt=""></span></p>
                    <p><b class="tel">189-3636-1545</b></p>
                    <h5>联系电话</h5>
                </dd>
            </dl>
        </div>
    </div>
    <div class="fd-copy">
        <div class="wp">
            <p>
                <span>同济大学软件学院谈瑞 同济大学软件学院陈超 同济大学汽车学院李扬 Copyright&copy; 2018 </span><a href=""></a> <a href=""></a>
            </p>
        </div>
    </div>
</div>
<div class="side2">
    <ul>
        <li><a href=""><img src="images/r_icon1.png" alt=""></a><div class="weixin"><em></em><img src="images/ewm.png" alt=""></div></li>
        <li><a href="javascript:goTop();" class="sidetop"><img src="images/r_icon2.png"></a></li>
    </ul>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/flexslider.js"></script>

<script>
    $('.team .flexslider').flexslider({
        animation: "slide",
        animationLoop: true,
        slideshow: false,
        prevText:"",
        nextText:"",
        controlNav: false,
        directionNav: true,
        pauseOnHover: true,
        slideshowSpeed: 3000,
        start:function(slider){

        },
        before: function(){
            $('.flexslider').resize();
        },
        after: function(slider) {
            initState();
            move();
        }
    });
    function initState(){
        $('.team .animated').each(function(){
            var dataAnimate = $(this).data('animate');
            $(this).removeClass(dataAnimate);
        })
    }
    function move(){
        var curSlide = $('.team .slides li.flex-active-slide');
        var h3 = curSlide.find('h3'),
                p = curSlide.find('p'),
                img = curSlide.find('img');
        h3.addClass( h3.data ('animate'));
        p.addClass( p.data('animate'));
        img.each(function(){
            $(this).addClass($(this).data('animate')).css({'animation-delay': $(this).data('delay')+'s'});
        })
    }
    $(window).load(function(){
        move();
    })
</script>
</body>
</html>