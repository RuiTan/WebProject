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
    <link rel="stylesheet" href="css/font-awesome.css">
    <style>
        div.search
        {padding: 30px 0;}
        form { position: relative; width: 300px; margin: 0 auto; }
        input, button { border: none; outline: none; }
        input { width: 100%; height: 42px; padding-left: 13px; }
        button { height: 42px; width: 42px; cursor: pointer; position: absolute; }
        .bar3 {background: #F9F0DA;}
        .bar3 form {background: #A3D0C3;}
        .bar3 input, .bar3 button { background: transparent; }
        .bar3 button { top: 0; right: 0; }
        .bar3 button:before { content: "\f002"; font-family: FontAwesome; font-size: 16px; color: #F9F0DA; }
    </style>
</head>
<body>
<jsp:useBean id="user" class="com.tanrui.bean.get_user_info"></jsp:useBean>
<%
    HttpSession session1 = request.getSession(false);
    if (session1.getAttribute("username") != "" && session1.getAttribute("username") != null){
        user.setUsername((String) session1.getAttribute("username"));
        user.setPassword((String) session1.getAttribute("password"));
    }else {
        response.sendRedirect("login_index.jsp");
    }
%>

<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index1"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp" >首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
                <li><a href="course_research.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">课程搜索</a></li>
                <li><a href="course_comments.jsp" >课程评价</a></li>
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
        <li><a href="index.jsp">首页 </a></li>
        <li><a href="course_service.jsp" >课程服务</a></li>
        <li><a href="excellent_course.jsp" >精品课程</a></li>
        <li><a href="course_research.jsp"  class="v1">课程搜索</a></li>
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/14415956337556.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>课程搜索</h3>
    <h5><span>Research</span> OF COURSE</h5>
</div>

    <div id="container">
        <div class="search bar3">
            <form>
                <input type="text" placeholder="请输入您要搜索的内容..." id="search-text" name="search-text">
                <button class="fa fa-search" type="submit" id="submit">
                </button>
            </form>
        </div>
    </div>

    <div class="c"></div>
<ul class="ul-case">
    <li>
        <div class="block">
            <div class="pic"><img src="images/14446394304458.jpg" alt="参仙源参业股份有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>森林公园网站</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14446391053281.jpg" alt="广东华美立家投资控股有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>移动微站</h5>
                        <em></em>
                        <h3>华美立家集团站</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429937588106.jpg" alt="LMP品牌站"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>LMP品牌站官网</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429898301265.jpg" alt="中赫置地投资控股有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>集团公司</h5>
                        <em></em>
                        <h3>中赫集团内网</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429888454624.jpg" alt="北京致远协同软件有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>科技电子</h5>
                        <em></em>
                        <h3>致远软件</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14425590613750.jpg" alt="北京连洋鞋业有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>平台电商</h5>
                        <em></em>
                        <h3>连洋鞋业网站</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14423045107241.jpg" alt="礼悦利达（北京）商贸有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>酒店餐饮</h5>
                        <em></em>
                        <h3>礼悦利达</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14423036593132.jpg" alt="竣腾影业（北京）有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>竣腾影业网站</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14422959085097.jpg" alt="国家信息技术安全研究中心"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>政府机关</h5>
                        <em></em>
                        <h3>国家信息安全中心网站</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14503165901362.jpg" alt="北京科电航宇空间技术有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>科技电子</h5>
                        <em></em>
                        <h3>科电航宇官网</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14502575675982.jpg" alt="国家统计局网站建设"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>政府机关</h5>
                        <em></em>
                        <h3>国家统计局内部信息网</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14502572864534.jpg" alt="北京共享星光文化传播有限公司"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>影视传媒</h5>
                        <em></em>
                        <h3>共享星光官网</h3>
                        <span class="more">案例详情</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
</ul>
<div class="c"></div>
<div class="pages">

    <a href='' class='a-prev'><</a> <a class='page-on'>1</a> <a href="/case4_0-2">2</a> <a href="/case4_0-3">3</a> <a href="/case4_0-4">4</a> <a href="/case4_0-5">5</a> <a class='a-next' href="/case4_0-2">></a>
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
<script>
    var isMobile;
    function mobileCheck(){
        isMobile  = $('#m-hd').is(':visible');
    }

    $(window).resize(function(event) {
        mobileCheck();
        $('.ul-case li').removeClass('on');
        if(isMobile){
            $('.ul-case').attr('id','ul-mobile');
        }else{
            $('.ul-case').attr('id','ul-pc');
        }
    });

    $('body').on('mouseenter mouseleave', '#ul-pc li', function(){
        $(this).toggleClass('on');
    })

    $('body').on('click', '#ul-mobile li', function(){
        $(this).toggleClass('on');
    })

    $(window).load(function(){
        $(window).trigger('resize');
    })
</script>
</body>
</html>