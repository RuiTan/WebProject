<%@ page language="java" import="java.util.*" pageEncoding="GB2312" %>
<%@ page import="javax.swing.*" %>
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
        JOptionPane.showMessageDialog(null, "����δ��¼����ǰ����¼�����¼��");
        response.sendRedirect("login_index.jsp");
    }
%>

<% out.print(user.getUsername() + user.getPassword());%>
<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index1"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">��ҳ</a></li>
                <li><a href="about.jsp" >�γ̷���</a></li>
                <li><a href="service.jsp" >��Ʒ�γ�</a></li>
                <li><a href="case.jsp" >�γ�����</a></li>
                <li><a href="news.jsp" >�γ�����</a></li>
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
        <li><a href="about.jsp" >�γ̷���</a></li>
        <li><a href="service.jsp" >��Ʒ�γ�</a></li>
        <li><a href="case.jsp" >�γ�����</a></li>
        <li><a href="news.jsp" >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
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
            <h3>���갸��</h3>
            <h5><span>case</span> of TUNIU</h5>
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
                                    <h3>LMPƷ��վ����</h3>
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
                                    <h3>����Ьҵ��վ</h3>
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
                                    <h3>��������</h3>
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
                                    <h3>����Ӱҵ��վ</h3>
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
                                    <h3>������Ϣ��ȫ������վ</h3>
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
                                    <h3>�����й���</h3>
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
                                    <h3>��������</h3>
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
                                    <h3>ʮ����ʹ����</h3>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="c"></div>
            <div class="more-i"><a href="case.jsp"></a></div>
        </div>
    </div>
</div>
<div class="row3 news-bg">
    <div class="wp">
        <div class="tit-i tit-i-1">
            <h3>���궯̬</h3>
            <h5>TUNIU <span>news</span></h5>
        </div>
        <ul class="ul-news-i">
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>03/01</em>2016</span>
                        <h3><a href="case-info.jsp">�����ʦ����ҳ������ƻ���</a></h3>
                        <p>���ż����Ļ��ۣ���ҳ�еĶ���Ҳ�Ѿ��Ǳ�ؿ�������ʱ�У���Ȥ��Ҳ���Ի�������ӿ�ֵ��¼������¹�</p>
                        <a href="case-info.jsp?_5_313.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14568143499060.jpg) 0 0 /100% 100% no-repeat;background: url(images/14568143499060.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">�����ʦ����ҳ������ƻ���</a></h3>
                            <p>���ż����Ļ��ۣ���ҳ�еĶ���Ҳ�Ѿ��Ǳ�ؿ�������ʱ�У���Ȥ��Ҳ���Ի�������ӿ�ֵ��¼������¹�</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>02/22</em>2016</span>
                        <h3><a href="case-info.jsp">��������վ������ƴ���</a></h3>
                        <p>�õĽ�����ƿ������ֿ�����������վ��������ͨ��վ��Ȼ������������Ե���ƴ�����ֻ������㱾</p>
                        <a href="case-info.jsp?_5_310.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14561176714477.png) 0 0 /100% 100% no-repeat;background: url(images/14561176714477.png) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">��������վ������ƴ���</a></h3>
                            <p>�õĽ�����ƿ������ֿ�����������վ��������ͨ��վ��Ȼ������������Ե���ƴ�����ֻ������㱾</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>02/15</em>2016</span>
                        <h3><a href="case-info.jsp">����WEB��վ���ƶ�APP������</a></h3>
                        <p>��������е�Web��վ���ƶ�App����ƣ�ǰ��������PC������������������������ֻ�/ƽ����ԡ���ͬ����</p>
                        <a href="case-info.jsp" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14555070718366.jpg) 0 0 /100% 100% no-repeat;background: url(images/14555070718366.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">����WEB��վ���ƶ�APP������</a></h3>
                            <p>��������е�Web��վ���ƶ�App����ƣ�ǰ��������PC������������������������ֻ�/ƽ����ԡ���ͬ����</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>01/26</em>2016</span>
                        <h3><a href="case-info.jsp">���ע��/��¼����ʱע��ĳ�</a></h3>
                        <p>����ʱ���ķ�չ�����û�ע�ᡢ��¼����������һ����վ�Ĺ���һֱ�ڱ仯���Ӽ򵥵���Ϣ��д��չ��ȫ</p>
                        <a href="case-info.jsp?_5_299.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14537972384811.jpg) 0 0 /100% 100% no-repeat;background: url(images/14537972384811.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">���ע��/��¼����ʱע��ĳ�</a></h3>
                            <p>����ʱ���ķ�չ�����û�ע�ᡢ��¼����������һ����վ�Ĺ���һֱ�ڱ仯���Ӽ򵥵���Ϣ��д��չ��ȫ</p>
                        </div>
                    </div>
                </div>
            </li>

        </ul>
        <div class="c"></div>
        <div class="news-more"><a href="#">load more</a></div>
    </div>
</div>
<div class="row4 fix">
    <div class="wp">
        <div class="tit-i">
            <h3>��ϵ����</h3>
            <h5><span>contact</span> TUNIU</h5>
        </div>
        <div class="contact-l">
            <ul class="ul-contact">
                <li class="li1">����·33��δ����</li>
                <li class="li2"><a href="tel:022-87423050">022-87423050 (��ѯ) / <a href="tel:022-87423050">87423050 (�ۺ�)<br /><a href="tel:400-000-0000">400-000-0000 (��ѯ)</a><br /><a href="tel:13888888888">13888888888 (��ѯ)</li>
                <li class="li3"><a href="mailto:87432050@qq.com">87432050@qq.com</a></li>
            </ul>
        </div>
        <div class="contact-r">

            <form action="" class="contact-form" method="post">
                <div class="">
                    <input type="text" class="inp l" name="name" id="name" placeholder="��������">
                    <input type="text" class="inp r" name="tel" id="tel" placeholder="������ϵ��ʽ">
                </div>
                <textarea cols="30" rows="10" name="txt_con" id="txt"></textarea>
                <input type="submit" value="�ύ��������" class="sub" id="sub">
            </form>
        </div>
    </div>
</div>
<div class="map">
    <div class="map-s">
        <a href="javascript:void(0);" class="btn"><em></em>���չ����ͼ</a>
    </div>
    <div class="map-pop">
        <a href="javascript:void(0);" class="btn-down"></a>
        <div class="map-bg1"></div>
        <div class="map-bg2"></div>
        <div id="map" class="map-i" style="width:100%; height: 100%;">
        </div>
    </div>
</div>
</div>
<div class="c"></div>
<div id="fd" class="index-fd pr">
    <div class="map-bg3"></div>
    <div class="wp">
        <div class="fd-top">
            <dl>
                <dt>���ڰ���</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">������˭</a></li>
                        <li><a href="">���Ƿ���Ŀͻ�</a></li>
                        <li><a href="">���ǵ��Ŷ�</a></li>
                        <li><a href="">�ͻ����ϵͳ</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>�������</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">��վ����</a></li>
                        <li><a href="">H5��Ӧʽ ������վ</a></li>
                        <li><a href="">�ƶ��� & ΢��վ����</a></li>
                        <li><a href="">��������</a></li>
                        <li><a href="">��ҵ�������</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>���갸��</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">�ƶ�΢վ</a></li>
                        <li><a href="">ƽ̨����</a></li>
                        <li><a href="">HTML5</a></li>
                        <li><a href="">��ҵ��վ</a></li>
                        <li><a href="">���Ź�˾</a></li>
                        <li><a href="">�ӹ�����</a></li>
                        <li><a href="">�Ƶ����</a></li>

                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>���궯̬</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">��˾��̬</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>��ϵ����</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="" class="sina"></a><span class="weixin-pic"><img src="images/ewm.jpg" alt=""></span></p>
                    <p><b class="tel">400-000-0000</b></p>
                    <h5>�����������</h5>
                </dd>
            </dl>
        </div>
    </div>
    <div class="fd-copy">
        <div class="wp">
            <p>
                <span>���缼�������������޹�˾ Copyright&copy; 2007-2015 </span><a href=""><span>��ICP��030xxxxx3��</span></a> <a href=""></a>
            </p>
        </div>
    </div>
</div>
<div class="side">
    <ul>
        <li><a href=""><div class="sidebox"><img src="images/side_icon02.png">������ѯ</div></a></li>
        <li><a href=""><div class="sidebox"><img src="images/side_icon01.png">������ѯ<!-- QQ:16757330 --></div></a></li>
        <li><a href="javascript:void(0);" ><div class="sidebox"><img src="images/side_icon03.png">4000000000</div></a></li>
    </ul>
</div>
<div class="side2">
    <ul>
        <li><a href=""><img src="images/r_icon1.png" alt=""></a><div class="weixin"><em></em><img src="images/ewm.jpg" alt=""></div></li>
        <li><a href="javascript:goTop();" class="sidetop"><img src="images/r_icon2.png"></a></li>
    </ul>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/flexslider.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
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
</body>
</html>