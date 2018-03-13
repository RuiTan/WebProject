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
                <li><a href="index.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">��ҳ</a></li>
                <li><a href="course_service.jsp" >�γ̷���</a></li>
                <li><a href="excellent_course.jsp" >��Ʒ�γ�</a></li>
                <li><a href="course_research.jsp" >�γ�����</a></li>
                <li><a href="course_comments.jsp" >�γ�����</a></li>
                <li><a href="contact.jsp">��վ����</a></li>

            </ul>
            ��ӭ <a href="#"><%=session1.getAttribute("username")%></a> ����ͬ�ô�ѧѡ�ްٿ���
        </div>
    </div>
</div>
<div class="c"></div>
<div id="m-hd">
    <a href="index1" class="m-logo"><img src="images/logo.png" alt=""></a>
    <div class="m-trigger"></div>
    <ul class="m-nav">
        <li><a href="index.jsp" class="v1">��ҳ </a></li>
        <li><a href="course_service.jsp" >�γ̷���</a></li>
        <li><a href="excellent_course.jsp" >��Ʒ�γ�</a></li>
        <li><a href="course_research.jsp" >�γ�����</a></li>
        <li><a href="course_comments.jsp" >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
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
                    <h2 data-animate="fadeInRight" class="animated">ѡ��֪����</h2>
                    <h3 data-animate="fadeInUp" class="animated">�ṩ�м�ֵ��ѡ�޿ν���</h3>
                </div>
            </li>
            <li class="s2">
                <img src="images/banner2.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInRight" class="animated">ѡ��֮�Ҽ�</h2>
                    <h3 data-animate="fadeInDown" class="animated">Listen to your voice</h3>
                    <h4 data-animate="fadeInUp" class="animated">�������ѡ�޿γ̵�������飬���������˽����ſγ�</h4>
                </div>
            </li>
            <li class="s3">
                <img src="images/banner3.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInDown" class="animated">ѡ�޴��̸</h2>
                    <h3 data-animate="fadeInRight" class="animated">The audience's eyes are sharp</h3>
                    <h4 data-animate="fadeInUp" class="animated">�˽��Ҷ�ѡ�޿γ̵Ŀ������͹۵��˽�ѡ�޿γ�</h4>
                </div>
            </li>
        </ul>
    </div>
</div>
<!-- end #banner -->
<div class="row1 fix">
    <div class="wp">
        <div class="tit-i">
          <h3>��Ʒ�γ� </h3>
          <h5>Excellent course</h5>
        </div>
        <ul class="ul-icon-i">
            <li class="li1">
                <div class="pad">
                    <a href="">
                        <span></span>
                        <h3>ѡ��֪����</h3>
                        <em></em>
                        <p>�ṩ�м�ֵ��ѡ�޿βο�</p>
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
                        <h3>ѡ��֮�Ҽ�</h3>
                        <em></em>
                        <p>�������ѡ�޿γ̵�������飬���������˽����ſγ�</p>
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
                        <h3>ѡ�޴��̸</h3>
                        <em></em>
                        <p>�˽��Ҷ�ѡ�޿γ̵Ŀ������͹۵��˽�ѡ�޿γ�</p>
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
                        <h3>�Ҷ���վ�п���</h3>
                        <em></em>
                        <p>����������������飬�����Ǹ��õؽ�����վ</p>
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
            <h3>���ò��ϵľ�Ʒ�γ�</h3>
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
                                    <h3>�߿Ƽ��ھ����ϵ�Ӧ��</h3>
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
                                    <h3>��ѧ��ְҵ���Ĺ滮</h3>
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
                                    <h3>��Ӱ����</h3>
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
                                    <h3>������ԭ����ʵ��</h3>
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
                                    <h3>��������</h3>
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
                                    <h3>����ͼ��������</h3>
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
                                    <h3>�������ֻ�</h3>
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
                                    <h3>������������</h3>
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
            <h3>���¿γ�����</h3>
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
                        <h3><a href="case-info.jsp">�κţ�<%=comments.get(0).getLessons_num()%></a></h3>
                        <p>���ۣ�<%=comments.get(0).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_313.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14568143499060.jpg) 0 0 /100% 100% no-repeat;background: url(images/14568143499060.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">�κţ�<%=comments.get(0).getLessons_num()%></a></h3>
                            <p>���ۣ�<%=comments.get(0).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(1).getLessons_name()%></em>--BY <%=comments.get(1).getUsername()%></span>
                        <h3><a href="case-info.jsp">�κţ�<%=comments.get(1).getLessons_num()%></a></h3>
                        <p>���ۣ�<%=comments.get(1).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_310.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14561176714477.png) 0 0 /100% 100% no-repeat;background: url(images/14561176714477.png) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">�κţ�<%=comments.get(1).getLessons_num()%></a></h3>
                            <p>���ۣ�<%=comments.get(1).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(2).getLessons_name()%></em>--BY <%=comments.get(2).getUsername()%></span>
                        <h3><a href="case-info.jsp">�κţ�<%=comments.get(2).getLessons_num()%></a></h3>
                        <p>���ۣ�<%=comments.get(2).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14555070718366.jpg) 0 0 /100% 100% no-repeat;background: url(images/14555070718366.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">�κţ�<%=comments.get(2).getLessons_num()%></a></h3>
                            <p>���ۣ�<%=comments.get(2).getComment().substring(0, 40) + "..."%></p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em><%=comments.get(3).getLessons_name()%></em>--BY <%=comments.get(3).getUsername()%></span>
                        <h3><a href="case-info.jsp">�κţ�<%=comments.get(3).getLessons_num()%></a></h3>
                        <p>���ۣ�<%=comments.get(3).getComment().substring(0, 40) + "..."%></p>
                        <a href="case-info.jsp?_5_299.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14537972384811.jpg) 0 0 /100% 100% no-repeat;background: url(images/14537972384811.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">�κţ�<%=comments.get(3).getLessons_num()%></a></h3>
                            <p>���ۣ�<%=comments.get(3).getComment().substring(0, 40) + "..."%></p>
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
                <dt>��ϵ����</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="https://weibo.com/guitoubing" class="sina"></a><span class="weixin-pic"><img src="images/ewm.png" alt=""></span></p>
                    <p><b class="tel">189-3636-1545</b></p>
                    <h5>��ϵ�绰</h5>
                </dd>
            </dl>
        </div>
    </div>
    <div class="fd-copy">
        <div class="wp">
            <p>
                <span>ͬ�ô�ѧ���ѧԺ̸�� ͬ�ô�ѧ���ѧԺ�³� ͬ�ô�ѧ����ѧԺ���� Copyright&copy; 2018 </span><a href=""></a> <a href=""></a>
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