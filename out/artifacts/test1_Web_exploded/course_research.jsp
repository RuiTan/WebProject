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
                <li><a href="course_research.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">�γ�����</a></li>
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
        <li><a href="index.jsp">��ҳ </a></li>
        <li><a href="course_service.jsp" >�γ̷���</a></li>
        <li><a href="excellent_course.jsp" >��Ʒ�γ�</a></li>
        <li><a href="course_research.jsp"  class="v1">�γ�����</a></li>
        <li><a href="course_comments.jsp" >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/14415956337556.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>���갸��</h3>
    <h5><span>case</span> OF TUNIU</h5>
</div>
<div class="sub-nav">
    <ul>
        <li ><a href="#">ȫ��</a></li>
        <li><a  href="#">��������</a></li>
        <li><a  href="#">������ѵ</a></li>
        <li><a  href="#">����ҽ��</a></li>
        <li><a  href="#">Ӱ�Ӵ�ý</a></li>
        <li><a  href="#">�Ƽ�����</a></li>
        <li><a  href="#">�����ز�</a></li>
        <li><a  href="#">����Ͷ��</a></li>
        <li><a  href="#">�Ƶ����</a></li>
        <li><a  href="#">�ӹ�����</a></li>
        <li><a  href="#">���Ź�˾</a></li>
        <li><a  href="#">��ҵ��վ</a></li>
        <li><a  href="#">HTML5</a></li>
        <li><a  href="#">ƽ̨����</a></li>
        <li><a  href="#">�ƶ�΢վ</a></li>
    </ul>
</div>
<div class="c"></div>
<ul class="ul-case">
    <li>
        <div class="block">
            <div class="pic"><img src="images/14446394304458.jpg" alt="����Դ��ҵ�ɷ����޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>ɭ�ֹ�԰��վ</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14446391053281.jpg" alt="�㶫��������Ͷ�ʿع����޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>�ƶ�΢վ</h5>
                        <em></em>
                        <h3>�������Ҽ���վ</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429937588106.jpg" alt="LMPƷ��վ"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>LMPƷ��վ����</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429898301265.jpg" alt="�к��õ�Ͷ�ʿع����޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>���Ź�˾</h5>
                        <em></em>
                        <h3>�кռ�������</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14429888454624.jpg" alt="������ԶЭͬ�������޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>�Ƽ�����</h5>
                        <em></em>
                        <h3>��Զ����</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14425590613750.jpg" alt="��������Ьҵ���޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>ƽ̨����</h5>
                        <em></em>
                        <h3>����Ьҵ��վ</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14423045107241.jpg" alt="���������������ó���޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>�Ƶ����</h5>
                        <em></em>
                        <h3>��������</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14423036593132.jpg" alt="����Ӱҵ�����������޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>HTML5</h5>
                        <em></em>
                        <h3>����Ӱҵ��վ</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14422959085097.jpg" alt="������Ϣ������ȫ�о�����"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>��������</h5>
                        <em></em>
                        <h3>������Ϣ��ȫ������վ</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14503165901362.jpg" alt="�����Ƶ纽��ռ似�����޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>�Ƽ�����</h5>
                        <em></em>
                        <h3>�Ƶ纽�����</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14502575675982.jpg" alt="����ͳ�ƾ���վ����"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>��������</h5>
                        <em></em>
                        <h3>����ͳ�ƾ��ڲ���Ϣ��</h3>
                        <span class="more">��������</span>
                    </div>
                </a>
            </div>
        </div>
    </li>
    <li>
        <div class="block">
            <div class="pic"><img src="images/14502572864534.jpg" alt="���������ǹ��Ļ��������޹�˾"></div>
            <div class="txt">
                <a href="case-info.jsp" style="width:100%;height:100%;display:block;">
                    <b></b>
                    <div class="pad">
                        <h5>Ӱ�Ӵ�ý</h5>
                        <em></em>
                        <h3>�����ǹ����</h3>
                        <span class="more">��������</span>
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
                <span>ͬ�ô�ѧ����ѧԺ̸�� ͬ�ô�ѧ����ѧԺ�³� ͬ�ô�ѧ����ѧԺ���� Copyright&copy; 2018 </span><a href=""></a> <a href=""></a>
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