<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.tanrui.bean.get_comment" %>
<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课程详情</title>
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
    <link rel="stylesheet" href="css/starability-minified/starability-all.min.css">
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
                <li><a href="index.jsp">首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
                <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
                <li><a href="course_comments.jsp" >课程评价</a></li>
                <li><a href="contact.jsp">网站留言</a></li>
            </ul>
            <div style="text-align: center; align-content: center; padding-top: 20px;">
                欢迎<a href="#">
                <%=session1.getAttribute("username")%>
            </a>来到同济大学选修课百科互动平台<a href="ql">
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
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<jsp:useBean id="lesson" class="com.tanrui.bean.lessons_info"></jsp:useBean>
<%! ArrayList<get_comment> comments; %>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
        ResultSet resultSet = connection.createStatement().executeQuery("SELECT * FROM lessons WHERE lessons_num='" + request.getParameter("lessons_num")+"'");
        while (resultSet.next()){
            lesson.setLessons_num(resultSet.getString(1));
            lesson.setLessons_name(resultSet.getString(2));
            lesson.setLessons_time(resultSet.getString(3));
            lesson.setLessons_score(resultSet.getString(4));
            lesson.setLessons_type(resultSet.getString(5));
            lesson.setLessons_campus(resultSet.getString(6));
            lesson.setTeacher_name(resultSet.getString(7));
            lesson.setTeacher_level(resultSet.getString(8));
        }
        ResultSet resultSet1 = connection.createStatement().executeQuery("SELECT * FROM comments WHERE lessons_num='" + lesson.getLessons_num()+"'");
        comments = new ArrayList<>();
        while (resultSet1.next()){
            get_comment comment = new get_comment();
            comment.setComment(resultSet1.getString(1));
            comment.setLessons_num(resultSet1.getString(2));
            comment.setLessons_name(resultSet1.getString(3));
            comment.setUsername(resultSet1.getString(4));
            comment.setDate(resultSet1.getString(5));
            comment.setLevel(resultSet1.getString(6));
            comments.add(comment);
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
<div class="c"></div>	<div id="bd">

    <div class="case-article">
        <div class="case-article-bg"  style="margin-bottom:13%;">
            <div class="wp pr">
                <div class="case-logo">
                    <%
                        out.print("<img src=\"images/"+lesson.getLessons_num()+".jpg\" alt=\""+lesson.getLessons_name()+"\">");
                    %>
                    </div>
                <h1 style="font: 30px bolder; "><%=lesson.getLessons_name()%></h1>
                <p class="tc">
                <ul class="ul-case" style="padding-top: 20px">
                    <li>
                        <span>课程编号：<%=lesson.getLessons_num()%></span><br/>
                    </li>
                    <li>
                        <span>任课教师：<%=lesson.getTeacher_name()%>--<%=lesson.getTeacher_level()%></span><br/>
                    </li>
                    <li>
                        <span>校    区：<%=lesson.getLessons_campus()%></span><br/>
                    </li>
                    <li>
                        <span>课程学分：<%=lesson.getLessons_score()%></span><br/>
                    </li>
                    <li>
                        <span>课程时长：<%=lesson.getLessons_time()%></span><br/>
                    </li>
                    <li>
                        <span>课程种类：<%=lesson.getLessons_type()%></span><br/>
                    </li>
                </ul>

                <%
                    request.getSession().setAttribute("lessons_name", lesson.getLessons_name());
                    request.getSession().setAttribute("lessons_num", lesson.getLessons_num());
                %>
                <form method="post" action="sc" style="padding-top: 20px">
                    <label>
                        <textarea name="comment" style="height: 100px; width: 1150px;" placeholder="输入您对该课程的评价，别忘记评分哦~"></textarea>
                    </label>
                    <section>
                        <div class="starability-container">
                                评分：
                                <fieldset class="starability-fade">
                                    <input type="radio" id="rate5-5" name="rating" value="5" />
                                    <label for="rate5-5" title="Amazing">5 stars</label>

                                    <input type="radio" id="rate4-5" name="rating" value="4" />
                                    <label for="rate4-5" title="Very good">4 stars</label>

                                    <input type="radio" id="rate3-5" name="rating" value="3" />
                                    <label for="rate3-5" title="Average">3 stars</label>

                                    <input type="radio" id="rate2-5" name="rating" value="2" />
                                    <label for="rate2-5" title="Not good">2 stars</label>

                                    <input type="radio" id="rate1-5" name="rating" value="1" />
                                    <label for="rate1-5" title="Terrible">1 star</label>
                                </fieldset>
                        </div>
                    </section>
                    <button type="submit" style="height: 30px; width: 60px;">提交</button>
                    <div style="height: 30px;"></div>
                </form>
                <div style=" border:#6d6d88 solid 1px; ">
                </div>
                <div style="padding-top: 10px">
                    <ul>
                        <%
                            for (get_comment comment : comments){
                                out.print("<li>");
                                out.print("<p style=\"font: 20px bolder\">" + comment.getUsername() + "("+comment.getLevel()+"分): </p>");
                                out.print("<div style=\"padding-left: 50px\">");
                                out.print("<p style=\"font: 15px \">    " + comment.getComment() + "</p>");
                                out.print("</div>");
                                out.print("</li>");
                            }
                        %>
                    </ul>

                </div>

            </div>
        </div>

    </div>
</div>
<div>

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
                    <p><a href="" class="weixin"></a>
                        <a href="https://weibo.com/guitoubing" class="sina"></a>
                    </p>
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