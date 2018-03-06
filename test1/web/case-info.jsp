<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
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
    <meta name="renderer" content="webkit"><!--360默认急速模式打开-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <meta name="full-screen" content="yes">
    <link rel="stylesheet" href="css/cui.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/less.css" />
</head>
<body>
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
    <!--<div class="cur">
        <div class="wp">您的当前位置：<a href="case.php?n=4">网思案例</a> > <a href="">森林公园网站</a></div>
    </div>-->
    <div class="case-article">

        <div class="case-article-bg"  style="margin-bottom:13%;background:url(images/14446394222650.jpg) 0 bottom no-repeat;">
            <div class="wp pr">
                <a href="#" class="article-prev"></a>
                <a href="#" class="article-next"></a>
                <div class="case-logo"><img src="images/14446394487216.png" alt="14446394487216.png"></div>
                <h1>森林公园网站</h1>
                <p class="tc"><span>网思为参仙源打造品牌网站——首页以简洁易懂的入口为切入点，去除更多的干扰信息，让访客更容易找到所需要的资料默认背景下，为当前季节的轮播图片，鼠标经过底部5个版块进行banner切换更替主体图片。</span></p>
                <div class="btn"><a href="" target="_blank">访问网址</a><a href="" target="_blank">了解报价</a></div>

                <div class="computer-bg"><img src="images/14446394577792.jpg" alt="森林公园网站"></div>
                <!-- <p class="tc"><img src="images/img15.jpg" style="margin-bottom:-135px;" alt=""></p> -->
            </div>
        </div>

        <div class="case-img2">
            <!--<p class="tc"><img src="images/img16.jpg" alt=""></p>-->
            <p>
                <img src="images/20151012164450_98294.jpg" alt="" />
            </p>
            <p>
                <img src="images/20151012164500_49723.jpg" alt="" />
            </p>			</div>
        <div class="case-back"><a href="case.jsp">返回案例列表</a></div>
    </div>
</div>
<!-- end #bd -->

<div class="c"></div>
<div id="fd" class="index-fd pr">
    <div class="map-bg3"></div>
    <div class="wp">
        <div class="fd-top">
            <dl>
                <dt>联系我们</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="https://weibo.com/guitoubing" class="sina"></a><span class="weixin-pic"><img src="images/ewm.jpg" alt=""></span></p>
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
        <li><a href=""><img src="images/r_icon1.png" alt=""></a><div class="weixin"><em></em><img src="images/ewm.jpg" alt=""></div></li>
        <li><a href="javascript:goTop();" class="sidetop"><img src="images/r_icon2.png"></a></li>
    </ul>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
</body>
</html>