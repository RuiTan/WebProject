<%@ page import="com.tanrui.bean.get_comment" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课程评论</title>
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
                <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
                <li><a href="course_comments.jsp"  style="color:#e4392a; border-bottom:3px solid #e4392a;" >课程评价</a></li>
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
        <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
        <li><a href="course_comments.jsp"  class="v1">课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/course_comments.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>课程评价</h3>
    <h5>Courses <span>Comments</span></h5>
</div>

<ul class="ul-list">

    <%
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui", "tanrui_f", "tanrui106");
                String sql = "SELECT * FROM `comments` ORDER BY `present_time` DESC";
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
                    get_comment comment = new get_comment();
                    comment.setComment(resultSet.getString(1));
                    comment.setLessons_num(resultSet.getString(2));
                    comment.setLessons_name(resultSet.getString(3));
                    comment.setUsername(resultSet.getString(4));
                    comment.setDate(resultSet.getString(5));
                    comment.setLevel(resultSet.getString(6));
                    if (resultSet.getString(4).equals("20180307210975")){
                        break;
                    }
                    sql = "SELECT * FROM lessons WHERE lessons_num=" + comment.getLessons_num();
                    ResultSet resultSet1 = connection.createStatement().executeQuery(sql);
                    while (resultSet1.next()){
                        comment.setLessons_name(resultSet1.getString(2));
                    }
                    String href = "case-info.jsp?lessons_num=" + comment.getLessons_num();
                    String commentString;
                    if (comment.getComment().length() < 25){
                        commentString = comment.getComment()+"        ";
                    }else {
                        commentString = comment.getComment().substring(0,25) + "...";
                    }
                    out.print("<li>\n" +
                            "        <div class=\"pad\" style=\"height: 150px\">\n" +
                            "            <div class=\"bor\">\n" +
                            "                <div class=\"txt\">\n" +
                            "                    <div class=\"title\">\n" +
                            "                        <span><em>" + comment.getLessons_num() + "</em></span>\n" +
                            "                        <h3><a href=\"" + href + "\">" + comment.getLessons_name() + "</a></h3>\n" +
                            "                    </div>\n" +
                            "                    <a href="+ href +"><p>"+ comment.getUsername() + ": " + commentString +"</p></a>\n" +
                            "                </div>\n" +
                            "            </div>\n" +
                            "        </div>\n" +
                            "    </li>");
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

    %>
</ul>
<div class="c"></div>
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


</body>
</html>