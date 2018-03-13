<%@ page language="java" import="java.util.*" pageEncoding="GB2312" %>
<%@ page import="javax.swing.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.tanrui.bean.get_comment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>

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
        <div class="logo"><a href="index1"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
                <li><a href="course_research.jsp" >课程搜索</a></li>
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
        <li><a href="index.jsp" class="v1">首页 </a></li>
        <li><a href="course_service.jsp" >课程服务</a></li>
        <li><a href="excellent_course.jsp" >精品课程</a></li>
        <li><a href="course_research.jsp" >课程搜索</a></li>
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>
<div id="bd">
<div id="banner">
    <div class="banner-bg"></div>
    <div class="flexslider">
        <ul class="slides">
            <li class="s1">
                <img src="images/banner1.jpg">
                <div class="ban-txt">
                    <h5 data-animate="fadeInDown" class="animated">innovating for you</h5>
                    <h2 data-animate="fadeInRight" class="animated">选修知多少</h2>
                    <h3 data-animate="fadeInUp" class="animated">提供有价值的选修课介绍</h3>
                </div>
            </li>
            <li class="s2">
                <img src="images/banner2.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInRight" class="animated">选修之我见</h2>
                    <h3 data-animate="fadeInDown" class="animated">Listen to your voice</h3>
                    <h4 data-animate="fadeInUp" class="animated">给予你对选修课程的意见建议，让所有人了解这门课程</h4>
                </div>
            </li>
            <li class="s3">
                <img src="images/banner3.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInDown" class="animated">选修大家谈</h2>
                    <h3 data-animate="fadeInRight" class="animated">The audience's eyes are sharp</h3>
                    <h4 data-animate="fadeInUp" class="animated">了解大家对选修课程的看法，客观的了解选修课程</h4>
                </div>
            </li>
        </ul>
    </div>
</div>
<!-- end #banner -->
<div class="row1 fix">
    <div class="wp">
        <div class="tit-i">
          <h3>精品课程 </h3>
          <h5>Excellent course</h5>
        </div>
        <ul class="ul-icon-i">
            <li class="li1">
                <div class="pad">
                    <a href="">
                        <span></span>
                        <h3>选修知多少</h3>
                        <em></em>
                        <p>提供有价值的选修课参考</p>
                        <div class="pic">
                            <img src="images/m1.png" alt="">
                            <img src="images/m2.png" alt="" class="pic-icon">
                        </div>
                    </a>
                </div>
            </li>
            <li class="li2">
                <div class="pad">
                    <a href="">
                        <span></span>
                        <h3>选修之我见</h3>
                        <em></em>
                        <p>给予你对选修课程的意见建议，让所有人了解这门课程</p>
                        <div class="pic">
                            <img src="images/m3.png" alt="">
                            <img src="images/m4.png" alt="" class="pic-icon">
                        </div>
                    </a>
                </div>
            </li>
            <li class="li3">
                <div class="pad">
                    <a href="">
                        <span></span>
                        <h3>选修大家谈</h3>
                        <em></em>
                        <p>了解大家对选修课程的看法，客观的了解选修课程</p>
                        <div class="pic">
                            <img src="images/m5.png" alt="">
                            <img src="images/m6.png" alt="" class="pic-icon">
                        </div>
                    </a>
                </div>
            </li>
            <li class="li4">
                <div class="pad">
                    <a href="">
                        <span></span>
                        <h3>我对网站有看法</h3>
                        <em></em>
                        <p>提出您宝贵的意见建议，让我们更好地建设网站</p>
                        <div class="pic">
                            <img src="images/m7.png" alt="">
                            <img src="images/m8.png" alt="" class="pic-icon">
                        </div>
                    </a>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="row2 fix">
    <div class="wp">
        <div class="tit-i">
            <h3>不得不上的精品课程</h3>
            <h5><span>case</span> of Excellent</h5>
        </div>
        <div class="case-i">

            <div class="case-i-r" style="width: 100%;">
                <ul class="ul-case-i">
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14429937588106.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>高科技在军事上的应用</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14425590613750.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>大学生职业生涯规划</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14423045107241.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>电影经典</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14423036593132.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>大数据原理与实践</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14422959085097.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>美术欣赏</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14429911135818.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>电脑图像创制艺术</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14429905909518.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>星期音乐会</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="case-info.jsp">
                            <div class="pic"><img src="images/14429012824914.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="images/logo_small.png" alt="">
                                    <h3>计算机辅助设计</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="c"></div>
            <div class="more-i"><a href="course_research.jsp"></a></div>
        </div>
    </div>
</div>
<div class="row3 news-bg">
    <div class="wp">
        <div class="tit-i tit-i-1">
            <h3>最新课程评价</h3>
            <h5>Courses <span>comments</span></h5>
        </div>
        <%
            ArrayList<get_comment> comments = new ArrayList<>();
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            String sql = "SELECT * FROM `comments` ORDER BY `present_time` DESC LIMIT 4";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            int flag = 1;
            while (resultSet.next() && flag++ <= 4){
                try {
                    get_comment comment = new get_comment();
                    comment.setComment(resultSet.getString(1));
                    comment.setLessons_num(resultSet.getString(2));
                    comment.setUsername(resultSet.getString(3));
                    comment.setDate(resultSet.getString(4));
                    sql = "SELECT * FROM lessons WHERE lessons_num=" + comment.getLessons_num();
                    ResultSet resultSet1 = connection.createStatement().executeQuery(sql);
                    while (resultSet1.next()){
                        comment.setLessons_name(resultSet1.getString(2));
                    }
                    comments.add(comment);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
        <ul class="ul-news-i">
            <li>
                <div class="pad">
                    <div class="txt">
                        <span>
                            <em><%=comments.get(0).getLessons_name()%></em>
                            --BY <%=comments.get(0).getUsername()%></span>
                        <h3><a href="case-info.jsp">课号：<%=comments.get(0).getLessons_num()%></a></h3>
                        <p>评价：<%=comments.get(0).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_313.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14568143499060.jpg) 0 0 /100% 100% no-repeat;background: url(images/14568143499060.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">课号：<%=comments.get(0).getLessons_num()%></a></h3>
                            <p>评价：<%=comments.get(0).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(1).getLessons_name()%></em>--BY <%=comments.get(1).getUsername()%></span>
                        <h3><a href="case-info.jsp">课号：<%=comments.get(1).getLessons_num()%></a></h3>
                        <p>评价：<%=comments.get(1).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_310.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14561176714477.png) 0 0 /100% 100% no-repeat;background: url(images/14561176714477.png) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">课号：<%=comments.get(1).getLessons_num()%></a></h3>
                            <p>评价：<%=comments.get(1).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(2).getLessons_name()%></em>--BY <%=comments.get(2).getUsername()%></span>
                        <h3><a href="case-info.jsp">课号：<%=comments.get(2).getLessons_num()%></a></h3>
                        <p>评价：<%=comments.get(2).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14555070718366.jpg) 0 0 /100% 100% no-repeat;background: url(images/14555070718366.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">课号：<%=comments.get(2).getLessons_num()%></a></h3>
                            <p>评价：<%=comments.get(2).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(3).getLessons_name()%></em>--BY <%=comments.get(3).getUsername()%></span>
                        <h3><a href="case-info.jsp">课号：<%=comments.get(3).getLessons_num()%></a></h3>
                        <p>评价：<%=comments.get(3).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_299.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14537972384811.jpg) 0 0 /100% 100% no-repeat;background: url(images/14537972384811.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">课号：<%=comments.get(3).getLessons_num()%></a></h3>
                            <p>评价：<%=comments.get(3).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>

        </ul>
        <div class="c"></div>
        <div class="news-more">
            <a href="course_comments">load more</a>
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
<script type="text/javascript" src="js/banner.js"></script>

<script>
    $('.ul-news-i li').hover(function(){
        $(this).toggleClass('on');
    })
    $('.ul-icon-i li').hover(function(){
        $(this).find('img:first').fadeIn(100);
        $(this).find('.pic-icon').animate({top:0});
    },function(){
        $(this).find('.pic-icon').animate({top:-134});
        $(this).find('img:first').fadeOut(100);
    })

    $('.case-img').hover(function(){
        $(this).toggleClass('on');
    })

    $('.map .btn').click(function(){
        $('.map-pop').show();
        $(this).parents('.map').addClass('map-big-i');
        var winW = $(window).width();
        var winH = $(window).height();
        console.log(winH);
        if(winW < 768){
            $('.map-pop').height($(window).height()-50-80);
            $('.map-big-i').height($(window).height()-50-80);
            $("html, body").animate({ scrollTop: $(document).height() }, 1000);
        }else{

            $('.map-pop').height($(window).height()-344);
            $('.map-big-i').height($(window).height()-344);
            $("html, body").animate({ scrollTop: $(document).height() }, 1000);
        }
        initMap();
    })
    $('.map .btn-down').click(function(){
        $('.map-pop').hide();
        $(this).parents('.map').removeClass('map-big-i');
        $('.map').height('107');
    })

</script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5b31afcdea6af2d7d3677ca5c1a22c46"></script>
<script type="text/javascript" src="js/map.js"></script>
</div>
</body>
</html>