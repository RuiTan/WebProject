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
    <meta name="renderer" content="webkit"><!--360Ĭ�ϼ���ģʽ��-->
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
        JOptionPane.showMessageDialog(null, "����δ��¼����ǰ����¼�����¼��");
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
                <li><a href="course_comments" >�γ�����</a></li>
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
        <li><a href="course_comments" >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
    <!--<div class="cur">
        <div class="wp">���ĵ�ǰλ�ã�<a href="case.php?n=4">��˼����</a> > <a href="">ɭ�ֹ�԰��վ</a></div>
    </div>-->
    <div class="case-article">

        <div class="case-article-bg"  style="margin-bottom:13%;background:url(images/14446394222650.jpg) 0 bottom no-repeat;">
            <div class="wp pr">
                <a href="#" class="article-prev"></a>
                <a href="#" class="article-next"></a>
                <div class="case-logo"><img src="images/14446394487216.png" alt="14446394487216.png"></div>
                <h1>ɭ�ֹ�԰��վ</h1>
                <p class="tc"><span>��˼Ϊ����Դ����Ʒ����վ������ҳ�Լ���׶������Ϊ����㣬ȥ������ĸ�����Ϣ���÷ÿ͸������ҵ�����Ҫ������Ĭ�ϱ����£�Ϊ��ǰ���ڵ��ֲ�ͼƬ����꾭���ײ�5��������banner�л���������ͼƬ��</span></p>
                <div class="btn"><a href="" target="_blank">������ַ</a><a href="" target="_blank">�˽ⱨ��</a></div>

                <div class="computer-bg"><img src="images/14446394577792.jpg" alt="ɭ�ֹ�԰��վ"></div>
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
        <div class="case-back"><a href="case.jsp">���ذ����б�</a></div>
    </div>
</div>
<!-- end #bd -->

<div class="c"></div>
<div id="fd" class="index-fd pr">
    <div class="map-bg3"></div>
    <div class="wp">
        <div class="fd-top">
            <dl>
                <dt>��ϵ����</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="https://weibo.com/guitoubing" class="sina"></a><span class="weixin-pic"><img src="images/ewm.jpg" alt=""></span></p>
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
        <li><a href=""><img src="images/r_icon1.png" alt=""></a><div class="weixin"><em></em><img src="images/ewm.jpg" alt=""></div></li>
        <li><a href="javascript:goTop();" class="sidetop"><img src="images/r_icon2.png"></a></li>
    </ul>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
</body>
</html>