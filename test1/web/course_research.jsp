<%@ page import="java.util.ArrayList" %>
<%@ page import="com.tanrui.bean.get_lessons" %>
<%@ page pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>课程搜索</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
        .bar3 {background: #ffffff;}
        .bar3 form {background: #A3D0C3;}
        .bar3 input, .bar3 button { background: transparent; }
        .bar3 button { top: 0; right: 0; }
        .bar3 button:before { content: "\f002"; font-family: FontAwesome; font-size: 16px; color: #fffaf0; }
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
        <div class="logo"><a href="index.jsp"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp" >首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
                <li><a href="course_research.jsp?page=1"   style="color:#e4392a; border-bottom:3px solid #e4392a;">课程搜索</a></li>
                <li><a href="course_comments.jsp" >课程评价</a></li>
                <li><a href="contact.jsp">网站留言</a></li>

            </ul>
            <div style="text-align: center; align-content: center; padding-top: 20px;">
                欢迎<a href="#">
                <%=session1.getAttribute("username")%>
            </a>来到同济大学选修课百科互动平台
                <a href="ql">
                    <p style="text-align: end">退出登录</p>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="c"></div>
<div id="m-hd">
    <a href="index.jsp" class="m-logo"><img src="images/logo.png" alt=""></a>
    <div class="m-trigger"></div>
    <ul class="m-nav">
        <li><a href="index.jsp">首页 </a></li>
        <li><a href="course_service.jsp" >课程服务</a></li>
        <li><a href="excellent_course.jsp" >精品课程</a></li>
        <li><a href="course_research.jsp?page=1"  class="v1">课程搜索</a></li>
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/course_research.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>课程搜索</h3>
    <h5><span>Research</span> OF COURSE</h5>
</div>

    <%--<div id="container">--%>
        <div class="search bar3">
            <form action="search" method="post">
                <input type="text" placeholder="请输入课程名关键词..." id="search-text" name="search-text">
                <button class="fa fa-search" type="submit" id="submit"></button>
            </form>
        </div>
    <%--</div>--%>

    <div class="c"></div>
<ul class="ul-case">
        <%
            HttpSession session2 = request.getSession();
            Boolean exist = (Boolean) session2.getAttribute("exist");
            ArrayList<get_lessons> lessons_list = (ArrayList<get_lessons>) session2.getAttribute("lessons_list");
            if (exist != null && lessons_list != null){
                if (lessons_list.isEmpty()){
                    out.print("<h3>未搜索到结果...</h3>");
                }
                for (get_lessons lesson : lessons_list) {
                    String href = "case-info.jsp?lessons_num=" + lesson.getLessons_num();
                        out.print("<li>\n" +
                                "        <div class=\"block\">\n" +
                                "            <div class=\"pic\"><img src=\"images/" + lesson.getLessons_num() + ".jpg\" alt=\"" + lesson.getLessons_name() + "\"></div>\n" +
                                "            <div class=\"txt\">\n" +
                                "                <a href=\""+ href +"\" style=\"width:100%;height:100%;display:block;\">\n" +
                                "                    <b></b>\n" +
                                "                    <div class=\"pad\">\n" +
                                "                        <h5>"+ lesson.getLessons_num() +"</h5>\n" +
                                "                        <em></em>\n" +
                                "                        <h3>"+ lesson.getLessons_name() +"</h3>\n" +
                                "                        <span class=\"more\">课程详情</span>\n" +
                                "                    </div>\n" +
                                "                </a>\n" +
                                "            </div>\n" +
                                "        </div>\n" +
                                "    </li>");
                    }
                    request.getSession().removeAttribute("lessons_list");
                    request.getSession().removeAttribute("exist");
            }
            else {
                int page_num = Integer.parseInt(request.getParameter("page"));
                ArrayList<get_lessons> lessons_list_default = (ArrayList<get_lessons>) request.getSession().getAttribute("lessons_list_default");
                if (lessons_list_default == null){
                    request.getRequestDispatcher("lp1").forward(request, response);
                }else {
                    for (int i = 0; i < 21; i++){
                        get_lessons lesson = lessons_list_default.get(i + (page_num - 1) * 21);
                        String href = "case-info.jsp?lessons_num=" + lesson.getLessons_num();
                        out.print("<li>\n" +
                                "        <div class=\"block\">\n" +
                                "            <div class=\"pic\"><img src=\"images/" + lesson.getLessons_num() + ".jpg\" alt=\"" + lesson.getLessons_name() + "\"></div>\n" +
                                "            <div class=\"txt\">\n" +
                                "                <a href=\""+ href +"\" style=\"width:100%;height:100%;display:block;\">\n" +
                                "                    <b></b>\n" +
                                "                    <div class=\"pad\">\n" +
                                "                        <h5>"+ lesson.getLessons_num() +"</h5>\n" +
                                "                        <em></em>\n" +
                                "                        <h3>"+ lesson.getLessons_name() +"</h3>\n" +
                                "                        <span class=\"more\">课程详情</span>\n" +
                                "                    </div>\n" +
                                "                </a>\n" +
                                "            </div>\n" +
                                "        </div>\n" +
                                "    </li>");
                    }

                }

            }

        %>


</ul>
</div>
    <div class="c"></div>
    <div class="pages">
        <%
            if (exist == null){
                int page_num = Integer.parseInt(request.getParameter("page"));
                out.print("<a href=\"pp?page=" + page_num + "\" class='a-prev'><</a> <a class='a-next' href=\"np?page="+ page_num +"\">></a>");
            }
        %>

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