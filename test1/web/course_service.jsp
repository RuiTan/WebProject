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
<div id="ban-in" style="background-image:url(images/14415956833641.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp" id="whous">
    <div class="tit-i">
        <h3>������˭</h3>
        <h5>about <span>TUNIU</span></h5>
    </div>
    <div class="c"></div>
    <div class="about-info">
        ����˼�����缼�������������޹�˾����ư��꣬Ӣ������TUNIU��<br />
        <p>
            �������ɴ��¶��껥�������о��ĺ�������Ա��2007�괴�죬ӵ��ǿ�����Ӫ�ŶӺͼ����Ŷӣ�רע�ڸ߶���վ���ơ���ҵ��վ���衢�ֻ��ƶ���վ���衢�ֻ�APP���ƿ�����Ӧ��ϵͳ�����ȣ�Ϊ��ҵ�ṩȫ�򻯻��������������
        </p>
        <p>
            ��˾�Դ���������<span>�ѳɹ�Ϊ500�������ҵ��λ�����������ṩ���߶˻������������а��������š�����������˼�ơ��й����С��������С��кռ��š�����Դ���ʲ���������٤���������С����ĵ䵱�С���ʤ��ɡ�����ͨ�䵱�С���ý��ѧ���������š����ʰ�ȫ��Ϣ���ġ����Ҿ������ġ�����ͳ�ƾ֡��ȵȡ�</span>
        </p>
        �԰�����˵���ͻ��Ǿ��������ԡ�Ψһ�Եġ�����ǿ�����Զ��ƻ��ķ�ʽ������ͨ��ͨ�����⡢�¼�����ý��Ľ�����ã�Ϊ���ṩ���ϵĽ��������ȫ��λ���Ӿ���������<br />
        ���궴Ϥ�й���������չ�켣��ͬʱ������Ϊרҵ��������˼άȥ����˼���������й���ҵ���й���������Ӫ���Լ������е�������ֵ���ᶨ���ƵĿ����й����紴�µĴ��죬�����ڽҿ�����Ӧ�õ���ƪ�£�<br />
    </div>
    <ul class="ul-about ul-show">
        <li class="li1">
            <div class="block">
                <img src="images/c1.png" alt="����˼��">
                <img src="images/c2.png" alt="">
                <img src="images/c3.png" alt="">
                <img src="images/c4.png" alt="">
                <img src="images/c5.png" alt="">
                <img src="images/c6.png" alt="">
                <img src="images/c7.png" alt="">
                <img src="images/c8.png" alt="">
            </div>
            <div class="c"></div>
            <h3>�������</h3>
            <em></em>
            <!--<p>�����û��������г�״������ҵ����ṩרҵ������<br />վ�߻�����ơ�������Ӫ�����������</p>-->
            <p>
                ��Բ�ͬ��ҵ״�����ͻ����������������죬��רҵ���Ľ�վ��������<span>����һ�޶����Ӿ�Ч����ƣ�������SEO�Ż��Ĺ淶�������д�����ڲ��������Ի������̨���޲����֡����ơ������塣</span>
            </p>				</li>
        <li class="li2">
            <div class="block">
                <img src="images/t1.png" alt="" data-top-center="background-position:0px 0px;" data-bottom-center="background-position:141px 0px;">
                <img src="images/t2.png" alt="����˼��">
                <img src="images/t3.png" alt="">
                <img src="images/t4.png" alt="">
                <img src="images/t5.png" alt="">
                <img src="images/t6.png" alt="">
                <img src="images/t7.png" alt="">
                <img src="images/t8.png" alt="">
                <img src="images/t9.png" alt="">
            </div>
            <div class="c"></div>
            <h3>�������</h3>
            <em></em>
            <p>
                <span>Ϊ�ͻ������ʺ��Լ��Ļ���������</span>
            </p>
            <p>
                <span>���ط������Ӿ���������ϰ�ߣ��û������Ѻã�</span>
            </p>
            <p>
                ע����Ϣ<span>�ܹ�������������ơ�������ƺ�</span>
            </p>
            <p>
                <span>����������Ϊ�ͻ��ṩ</span><span>�߼�ֵ��ƽ̨��</span>
            </p>
            <p>
	<span><br />
</span>
            </p>				</li>
        <li class="li3">
            <div class="block">
                <img src="images/b1.png" alt="TUNIU">
                <img src="images/b2.png" alt="">
                <img src="images/b3.png" alt="">
                <img src="images/b4.png" alt="">
            </div>
            <div class="c"></div>
            <h3>ȫ������</h3>
            <em></em>

            <p>
                <span>ȫ����һ���¸���ǻ�����ʱ���ı�Ȼ���</span><span>������ҵ��δ�������ڵ�����֮����</span><span>����</span><span>Ϊ�ͻ��ṩȫ��λȫ��������</span><span>��վ���衢΢վ��ơ�΢��</span><span>����ƽ̨������ͬʱ�����Ľ�����</span><span>����ƽ̨��ϣ�ʵ��һվʽ����</span>
            </p>
            <p>
                <br />
            </p>
            <p>
            </p>				</li>
    </ul>
</div>
<div class="c"></div>
<div class="customer fix" id="ourcus">
    <div class="wp">
        <div class="tit-i tit-i-1">
            <h3>���Ƿ���Ŀͻ�</h3>
            <h5>our <span>customer</span></h5>
        </div>
        <ul class="ul-customer">
            <li><a href=""><b></b><img src="images/14417772351016.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417772151236.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417777895049.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417773256917.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770416979.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770728965.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417770931301.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417685061923.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417778261716.png" alt="" width="234" height="87"></a></li>
            <li><a href=""><b></b><img src="images/14417773644618.png" alt="" width="234" height="87"></a></li>
        </ul>
    </div>
</div>
<div class="team" id="ourteam">
    <div class="wp">
        <div class="tit-i">
            <h3>���ǵ��Ŷ�</h3>
            <h5>our <span>team</span></h5>
        </div>
    </div>
    <div class="flexslider">
        <ul class="slides">
            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">����߻�</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        ��ֻ�ǽ�վ�����ṩ�м�ֵ��˼·���������<br />
                        �����˲�������Ը�����ҵ�����Լ���ҵģʽ��̽����ȫ���˽���ҵ��״�������ھ�Ʒ�Ƽ�ֵ��רҵ�߻���׼ȷȫ�ǲ�Ʒ��ֵ��
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">��������</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o5.png" alt="">
                        <img data-animate="fadeInRight" data-delay="0.9" class="animated" src="images/o6.png" alt="">
                    </div>
                </div>
            </li>
            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">��Ŀִ��</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        ��Ҫ������վ������Ŀ�Ŀ�����������̼�ع����������������Ŀ��Թ����Ƿǳ�ϸ���Ͻ��ģ���Ŀ��������ʱ��ͻ����������͹�ͨ��˫���������̵�ʱ����˳�������Ŀ����������
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">��������</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o7.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o8.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o9.png" alt="">
                        <img data-animate="fadeInRight" data-delay="1.5" class="animated" src="images/o10.png" alt="">
                        <img data-animate="fadeInDown" data-delay="1.8" class="animated" src="images/o11.png" alt="">
                    </div>
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">���ʦ</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        ����ϲ�����£��Դ���������ż��ߵ����飬��׼����Ϊһ���õĵ���ͨ���ﵩ�����ǲ����ṩƯ������ƣ���֪�������һ�ַ�������ԣ����ǽ������������ɣ����������Ʒ�ƣ�ǿ����Ƶ�ʵ���ԡ�
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">��������</a></p>
                    </div>
                </div>
                <div class="pic">
                    <img data-animate="fadeInRight" data-delay="0.5" class="animated" src="images/o18.png" alt="">
                    <img data-animate="fadeInRight" data-delay="1.5" class="animated" src="images/o21.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o19.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o20.png" alt="">
                    <img data-animate="fadeInLeft" data-delay="1.8" class="animated" src="images/o22.png" alt="">
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">Webǰ�˹���ʦ</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        ������ȷ�ϵ���Ƹ����ÿһ��ҳ������������ǻᰴ�����ǵ�W3C������׼����web������ʹ�ø����ס��ɷ�����ڡ��������������ǿ������չ�ȣ����û�����ﵽһ���߶ȣ�
                    </p>
                        <p class="animated fadeInDown">
                            ���ǽ������̶��ϼ���ҳ����룬ʹ����֩���ܴ��߸��������м�ֵ����Ϣ���������ǽ��ϸ����ر�׼CSS��������ʹ���������ܹ����ٵ���֪��ҳ���ݰ��ṹ��������¼��
                        </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">��������</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInLeft" data-delay="0.5" class="animated" src="images/o12.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.2" class="animated" src="images/o14.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="0.8" class="animated" src="images/o13.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.5" class="animated" src="images/o15.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="1.8" class="animated" src="images/o17.png" alt="">
                        <img data-animate="fadeInLeft" data-delay="2.2" class="animated" src="images/o16.png" alt="">
                    </div>
                </div>
            </li>

            <li>
                <div class="wp">
                    <div class="txt">
                        <h3 data-animate="fadeInDown" class="animated">����Ա</h3>
                        <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                        ���³��򿪷���ά����רҵ��Ա��ӵ��ǿ��Ŀ������������տͻ����󼰹�������������ר��ƽ̨<span>���Ż���վ�ṹ�����������룬�����Ĳ�μܹ�.</span>
                    </p></p>
                        <p data-animate="fadeInDown" class="animated"><a href="" class="more">��������</a></p>
                    </div>
                    <div class="pic">
                        <img data-animate="fadeInDown" data-delay="0.5" class="animated" src="images/o1.png" alt="">
                        <img data-animate="fadeInUp" data-delay="0.8" class="animated" src="images/o2.png" alt="">
                        <img data-animate="fadeInUp" data-delay="1.2" class="animated" src="images/o3.png" alt="">
                        <img data-animate="fadeInDown" data-delay="1.5" class="animated" src="images/o4.png" alt="">
                    </div>
                </div>
            </li>

        </ul>
        <em></em>
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
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/flexslider.js"></script>

<script>
    $('.team .flexslider').flexslider({
        animation: "slide",
        animationLoop: true,
        slideshow: false,
        prevText:"",
        nextText:"",
        controlNav: false,
        directionNav: true,
        pauseOnHover: true,
        slideshowSpeed: 3000,
        start:function(slider){

        },
        before: function(){
            $('.flexslider').resize();
        },
        after: function(slider) {
            initState();
            move();
        }
    });
    function initState(){
        $('.team .animated').each(function(){
            var dataAnimate = $(this).data('animate');
            $(this).removeClass(dataAnimate);
        })
    }
    function move(){
        var curSlide = $('.team .slides li.flex-active-slide');
        var h3 = curSlide.find('h3'),
                p = curSlide.find('p'),
                img = curSlide.find('img');
        h3.addClass( h3.data ('animate'));
        p.addClass( p.data('animate'));
        img.each(function(){
            $(this).addClass($(this).data('animate')).css({'animation-delay': $(this).data('delay')+'s'});
        })
    }
    $(window).load(function(){
        move();
    })
</script>
</body>
</html>