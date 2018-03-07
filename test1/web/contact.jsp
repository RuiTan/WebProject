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
                <li><a href="index.jsp" >��ҳ</a></li>
                <li><a href="course_service.jsp" >�γ̷���</a></li>
                <li><a href="excellent_course.jsp" >��Ʒ�γ�</a></li>
                <li><a href="course_research.jsp" >�γ�����</a></li>
                <li><a href="course_comments.jsp" >�γ�����</a></li>
                <li><a href="contact.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">��վ����</a></li>

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
        <li><a href="index.jsp" >��ҳ </a></li>
        <li><a href="course_service.jsp" >�γ̷���</a></li>
        <li><a href="excellent_course.jsp" >��Ʒ�γ�</a></li>
        <li><a href="course_research.jsp" >�γ�����</a></li>
        <li><a href="course_comments.jsp" class="v1"    >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
    <div id="ban-in" style="background-image:url(images/14415953225349.jpg)">
        <div class="ban-bg"></div>
    </div>
    <div class="row4 fix">
        <div class="wp">
            <div class="tit-i">
                <h3>��ϵ����</h3>
                <h5><span>contact</span> TUNIU</h5>
            </div>
            <div class="contact-l">
                <ul class="ul-contact">
                    <li class="li1">ͬ�ô�ѧ���ѧԺ�˺�¥422</li>
                    <li class="li2"><a href="tel:189-3636-1545">189-3636-1545   ��ϵ�ˣ�̸��</a></li>
                    <li class="li3"><a href="tel:173-1781-4742">173-1781-4742   ��ϵ�ˣ�����</a></li>
                    <li class="li3"><a href="tel:153-1600-3362">153-1600-3362   ��ϵ�ˣ��³�</a></li>
                    <li class="li3"><a href="Email:1063932362@qq.com">1063932362@qq.com</a></li>
                </ul>
            </div>
            <div class="contact-r">
                <!--<iframe scrolling="no" frameborder="0" src="guest.php" width="100%" height="235"></iframe>-->
                <form action="" class="contact-form" method="post">
                    <div class="">
                        <input type="text" class="inp l" name="name" id="name" placeholder="��������">
                        <input type="text" class="inp r" name="tel" id="tel" placeholder="������ϵ��ʽ">
                    </div>
                    <textarea cols="30" rows="10" name="txt_con" id="txt"></textarea>
                    <input type="submit" value="�ύ�����������" class="sub" id="sub">
                </form>
            </div>
        </div>
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
<script type="text/javascript">
    $("#sub").click(function(e) {
        var name=$("#name").val();
        var tel=$("#tel").val();
        var txt=$("#txt").val();
        var re = /^[1][3587]\d{9}$/;
        if(name==""){
            alert("��������Ϊ��");
            return false;
        }
        if(!re.test(tel)){
            alert("��������ȷ����ϵ��ʽ");
            return false;
        }
        if(txt==""){
            alert("��������������");
            return false;
        }

        $.ajax({
            url:"ajax_guest.php",
            type:'GET',
            data:{'name':name,'tel':tel,'txt':txt},
            //dataType:"text",
            async:false,
            error: function(){ alert("error");},
            success: function(data){alert(data);}
        })
    });
</script>
<script>
    $('.map .btn').click(function(){
        $('.map-pop').show();
        $(this).parents('.map').addClass('map-big');
        var winW = $(window).width();
        var winH = $(window).height();
        if(winW < 768){
            $('.map-pop').height($(window).height()-50-80);
            $('.map-big').height($(window).height()-50-80);
            $("html, body").animate({ scrollTop: $(document).height() }, 1000);
        }else{

            $('.map-pop').height($(window).height()-344-101);
            $('.map-big').height($(window).height()-344-101);
            $("html, body").animate({ scrollTop: $(document).height() }, 1000);
        }
        initMap();
    })
    $('.map .btn-down').click(function(){
        $('.map-pop').hide();
        $(this).parents('.map').removeClass('map-big');
        $('.map').height('107');
    })
</script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5b31afcdea6af2d7d3677ca5c1a22c46"></script>
<script type="text/javascript" src="js/map.js"></script>
</body>
</html>