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
                <li><a href="index.jsp" >��ҳ</a></li>
                <li><a href="course_service.jsp" >�γ̷���</a></li>
                <li><a href="excellent_course.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">��Ʒ�γ�</a></li>
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
        <li><a href="index.jsp">��ҳ </a></li>
        <li><a href="course_service.jsp" >�γ̷���</a></li>
        <li><a href="excellent_course.jsp"  class="v1">��Ʒ�γ�</a></li>
        <li><a href="course_research.jsp" >�γ�����</a></li>
        <li><a href="course_comments.jsp" >�γ�����</a></li>
        <li><a href="contact.jsp">��վ����</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/14415956565984.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp" id="webbuit">
<div class="tit-i">
    <h3>��վ����</h3>
    <h5>webset <span>design</span></h5>
</div>
<div class="about-info">
    <p>
        ����רע��Ʒ�ʻ��߶���վ������<span>��ҵƷ������վ�е��������������绥�������飬�Լ����ֻ����ƶ��˵����ʳ��֡�</span>
    </p>
    <p>
        <span style="line-height:1.5;">���ݿͻ�ʵ�����1��1��Ϊ���ṩ��ѯ���о����������߻��ȷ��񣬴Ӷ�������վ������Ŀ�ܹ�˳���ﵽ��������Ԥ�ڵ���ҵ</span><span style="line-height:1.5;">Ŀ�ꡣ</span>
    </p>
    <p>
        ����רҵ�ṩһվʽ���񣬴���վƷ�ƹ滮��������ơ��Ӿ���ơ���Ч���⣬�����򿪷�����Ӫά����
    </p>
    <p>
        <br />
    </p>
    <p>
        <br />
    </p>
</div>
<ul class="ul-webset pr ul-show">
<li class="li1">
    <div class="block">
        <img src="images/w1.png" alt="">
        <img src="images/w2.png" alt="">
        <img src="images/w3.png" alt="">
        <img src="images/w4.png" alt="">
        <img src="images/w5.png" alt="">
        <img src="images/w6.png" alt="">
        <img src="images/w7.png" alt="">
        <img src="images/w8.png" alt="">
        <img src="images/w9.png" alt="">
    </div>
    <h3>������վ����</h3>
    <a href="javascript:;" class="btn"></a>
    <div class="webset-pop">
        <div class="pad">
            <h2>������վ����<a href="javascript:void(0);" class="close"></a></h2>
            <div class="txt">
                <h4 class="tit-web">����</h4>
                <dl class="ul-txt1">
                    <dd>��������չʾƽ̨</dd>
                    <dd>������Ѷ����ƽ̨</dd>
                    <dd>��ҵ�����ƽ�ƽ̨</dd>
                    <dd>Ʒ���Ļ�����ƽ̨</dd>
                    <dd>������Դ����ƽ̨</dd>
                    <dd>Ͷ���߹�ͨƽ̨</dd>
                </dl>
            </div>
            <div class="txt">
                <h4 class="tit-web tit-web1">��ά</h4>
                <dl class="ul-txt1">
                    <dd>�ּ�Ȩ�޹���</dd>
                    <dd>������˻���</dd>
                    <dd>���ݷ���Ӧ��</dd>
                    <dd>��������չ</dd>
                    <dd>��ȫ���л���</dd>
                </dl>
            </div>
            <div class="txt txt1">
                <h4 class="tit-web tit-web2">����</h4>
                <ul class="ul-txt">
                    <li class="ok">
                        <h5><a href="javascript:void(0);">��վ����</a></h5>
                        <div class="txt-1">
                            <p>���õ��û���������Ϣ�ܹ�������Ӧ�÷�����ҵƷ���������ƷӪ������Ҫ������Ҫ�ÿͻ�����˼����ȫ��ĵ�����������Ӧ��վ��ͬ�û�����Ϣ�ܹ���Ԥ�⣬Ϊ�������ṩȫ�̵ķ��ʵ�����</p>
                        </div>
                    </li>
                    <li >
                        <h5><a href="javascript:void(0);">ɫ�ʴ���</a></h5>
                        <div class="txt-1">
                            <p>ҳ�洫��Ʒ�����׷�����ۡ��󷽡�������Ʒ����Ч����Ʒ�Ƽ۸�չ����ҵ���󣻱��С�UCD�����û�Ϊ���ĵ���ơ�ԭ��</p>
                        </div>
                    </li>
                    <li >
                        <h5><a href="javascript:void(0);">�ۺϷ���</a></h5>
                        <div class="txt-1">
                            <p>��Ч�Ĵ�����Ϣ������վҳ��������Ч�滮����һʱ�佫��Ч��Ϣ�����Ŀ�����ڣ�����չ�ֿ����û����飬���������߼�ǿ��Ʒ�ƺͲ�Ʒ��Ϣ����֪��</p>
                        </div>
                    </li>
                    <li >
                        <h5><a href="javascript:void(0);">��������</a></h5>
                        <div class="txt-1">
                            <p>��߻����ԺͿ����ԣ�����Web2.0������ǿ��վ������飬�����Ϣ��ȡЧ�ʣ����Ӹ�����û��ĸ��Ի�����</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</li>
<li class="li2">
    <div class="block">
        <img src="images/q1.png" alt="">
        <img src="images/q2.png" alt="">
        <img src="images/q3.png" alt="">
        <img src="images/q4.png" alt="">
        <img src="images/q5.png" alt="">
        <img src="images/q6.png" alt="">
    </div>
    <h3>��ҵ��վ����</h3>
    <a href="javascript:void(0);" class="btn"></a>
    <div class="webset-pop">
        <h2>��ҵ��վ����<a href="javascript:void(0);" class="close"></a></h2>
        <div class="txt">
            <h4 class="tit-web">����</h4>
            <dl class="ul-txt1">
                <dd>���� ���� ����</dd>
                <dd>��Ŀ�ܹ�ȫ�� �ص�ͻ��</dd>
                <dd>���������������</dd>
                <dd>�û������Ѻ�</dd>
                <dd>��̨�ײ��� ����չ</dd>
            </dl>
        </div>
        <div class="txt">
            <h4 class="tit-web tit-web1">��ά</h4>
            <dl class="ul-txt1">
                <dd>�޴����ڵ����߹�ͨ</dd>
                <dd>�����ԡ���ȫ�ԡ������淶</dd>
                <dd>��Ȼ��������¼</dd>
                <dd>��ݲ������������</dd>
                <dd>���ݷ�����ͳ�Ʒ���</dd>
            </dl>
        </div>
        <div class="txt txt1">
            <h4 class="tit-web tit-web2">����</h4>
            <ul class="ul-txt">
                <li class="ok">
                    <h5><a href="javascript:void(0);">��������</a></h5>
                    <div class="txt-1">
                        <p>��߻����ԺͿ����ԣ�����Web2.0������ǿ��վ������飬�����Ϣ��ȡЧ�ʣ����Ӹ�����û��ĸ��Ի�����</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">�ۺϷ���</a></h5>
                    <div class="txt-1">
                        <p>��Ч�Ĵ�����Ϣ������վҳ��������Ч�滮����һʱ�佫��Ч��Ϣ�����Ŀ�����ڣ�����չ�ֿ����û����飬���������߼�ǿ��Ʒ�ƺͲ�Ʒ��Ϣ����֪��</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">ɫ�ʴ���</a></h5>
                    <div class="txt-1">
                        <p>ҳ�洫��Ʒ�����׷�����ۡ��󷽡�������Ʒ����Ч����Ʒ�Ƽ۸�չ����ҵ���󣻱��С�UCD�����û�Ϊ���ĵ���ơ�ԭ��</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">��վ����</a></h5>
                    <div class="txt-1">
                        <p>���õ��û���������Ϣ�ܹ�������Ӧ�÷�����ҵƷ���������ƷӪ������Ҫ������Ҫ�ÿͻ�����˼����ȫ��ĵ�����������Ӧ��վ��ͬ�û�����Ϣ�ܹ���Ԥ�⣬Ϊ�������ṩȫ�̵ķ��ʵ�����</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</li>
<li class="li3">
    <div class="block">
        <img src="images/d1.png" alt="">
        <img src="images/d2.png" alt="">
        <img src="images/d3.png" alt="">
        <img src="images/d4.png" alt="">
        <img src="images/d5.png" alt="">
        <img src="images/d6.png" alt="">
        <img src="images/d7.png" alt="">
        <img src="images/d8.png" alt="">
        <img src="images/d9.png" alt="">
        <img src="images/d10.png" alt="">
        <img src="images/d11.png" alt="">
        <img src="images/d12.png" alt="">
        <img src="images/d13.png" alt="">
        <img src="images/d14.png" alt="">

    </div>
    <h3>����������վ����</h3>
    <a href="javascript:void(0);" class="btn"></a>
    <div class="webset-pop">
        <h2>������վ����<a href="javascript:void(0);" class="close"></a></h2>
        <div class="txt">
            <h4 class="tit-web">����</h4>
            <dl class="ul-txt1">
                <dd>��Ʒ����ϵͳ</dd>
                <dd>��Աϵͳ</dd>
                <dd>���ﳵϵͳ</dd>
                <dd>����֧��ϵͳ</dd>
                <dd>��������ϵͳ</dd>
            </dl>
        </div>
        <div class="txt">
            <h4 class="tit-web tit-web1">��ά</h4>
            <dl class="ul-txt1">
                <dd>�ӿڼ�����</dd>
                <dd>����չ</dd>
                <dd>�û������Ѻ�</dd>
                <dd>��ȫ���л���</dd>
                <dd>ά�����</dd>
            </dl>
        </div>
        <div class="txt txt1">
            <h4 class="tit-web tit-web2">����</h4>
            <ul class="ul-txt">
                <li class="ok">
                    <h5><a href="javascript:void(0);">��վ����</a></h5>
                    <div class="txt-1">
                        <p>���õ��û���������Ϣ�ܹ�������Ӧ�÷�����ҵƷ���������ƷӪ������Ҫ������Ҫ�ÿͻ�����˼����ȫ��ĵ�����������Ӧ��վ��ͬ�û�����Ϣ�ܹ���Ԥ�⣬Ϊ�������ṩȫ�̵ķ��ʵ�����</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">ɫ�ʴ���</a></h5>
                    <div class="txt-1">
                        <p>ҳ�洫��Ʒ�����׷�����ۡ��󷽡�������Ʒ����Ч����Ʒ�Ƽ۸�չ����ҵ���󣻱��С�UCD�����û�Ϊ���ĵ���ơ�ԭ��</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">�ۺϷ���</a></h5>
                    <div class="txt-1">
                        <p>�ṩרҵ�ĵ����������������Ӽ��ɼ򵥹��ﳵ�ͽ��㹦�ܵ�С�͵�������ϵͳ�����ͻ����ƵĴ��͸��ӵ�������ƽ̨��</p>
                    </div>
                </li>
                <li >
                    <h5><a href="javascript:void(0);">��������</a></h5>
                    <div class="txt-1">
                        <p>��߻����ԺͿ����ԣ�����Web2.0������ǿ��վ������飬�����Ϣ��ȡЧ�ʣ����Ӹ�����û��ĸ��Ի�����</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</li>
</ul>
<div class="h50"></div>
</div>
<div class="c"></div>
<div class="bg-blue fix" id="weiweb">
    <div class="wp">
        <div class="tit-i">
            <h3>H5��Ӧʽ ������վ</h3>
            <h5><span>Responsive</span> Web design</h5>
        </div>
        <div class="about-info">
            <p>
                ���Ӿ�����Ϊ������ϸ��ǡ���Ľ�����Ч��ͨ��Flash��html5��Ч����Ƶ���Ƚ�������ʵ�֣�ͻ��Ʒ�Ƽ���Ʒ�ص���������û���ö�Ŀһ�µ�����Ч�������������õ��û����飬�������������ӡ�������̡�
            </p>
        </div>
        <ul class="ul-web fix">
            <li class="li1">
                <div class="block">
                    <img src="images/n1.png" alt="">
                    <img src="images/n2.png" alt="">
                    <img src="images/n3.png" alt="">
                    <img src="images/n4.png" alt="">
                </div>
                <h3>�ḻ���������</h3>
            </li>
            <li class="li2">
                <div class="block">
                    <img src="images/n5.png" alt="">
                    <img src="images/n6.png" alt="">
                </div>
                <h3>html5ҳ�����</h3>
            </li>
            <li class="li3">
                <div class="block">
                    <img src="images/n7.png" alt="">
                    <img src="images/n8.png" alt="">
                    <img src="images/n9.png" alt="">
                    <img src="images/n10.png" alt="">
                    <img src="images/n11.png" alt="">
                    <img src="images/n12.png" alt="">
                </div>
                <h3>css3��Ч��ʽ</h3>
            </li>
            <li class="li4">
                <div class="block">
                    <img src="images/n13.png" alt="">
                    <img src="images/n14.png" alt="">
                </div>
                <h3>H5��Ӧʽ ������վ</h3>
            </li>
        </ul>
        <!-- <img src="images/img18.png" alt=""> -->
    </div>
</div>
<div class="wp" id="webmobel">
    <div class="tit-i">
        <h3>�ƶ���&΢��վ����</h3>
        <h5>website about <span>mobilephone</span></h5>
    </div>
    <div class="about-info">
        <p>
            ���ƶ�����ʱ�������ǵó�����ʹ�ã��������顱���ƶ�Ӧ�ÿ������������������ʱ���ľ��ʻ�����
        </p>
    </div>
    <div class="c"></div>
    <div class="web-con pr">
        <ul class="ul-tab TAB_CLICK_SLIDE" id=".tab-show">
            <li class="hover"><a href="javascript:void(0);"><h3>�ֻ���վ</h3><span>Mobile web site</span></a></li>
            <li ><a href="javascript:void(0);"><h3>΢��վ</h3><span>Micro website</span></a></li>
            <li ><a href="javascript:void(0);"><h3>΢��Ӧ�ÿ���</h3><span>WeChat application</span></a></li>
        </ul>
        <div class="shou"><img src="images/shou.png" alt=""></div>
        <div class="tab-con-box">
            <div class="tab-show ">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>�ֻ���վ��Ӧ�ֻ��������վ��ͨ���ֻ��ϵ��������������ַ���Ϳ�������������ֻ�����Ļ�ߴ��CPU�����������ޣ�ר��Ϊ�ֻ������Ż�����վ��Ϊ�����û������</p>
                        <ul class="ul-icon">
                            <li><b></b><span>�ƶ���������</span></li>
                            <li><b></b><span>��PC����ͬ��</span></li>
                            <li><b></b><span>ȫ�����ֻ�</span></li>
                            <li><b></b><span>������</span></li>
                            <li><b></b><span>�������</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-show dn">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>�ն���΢��Ϊ���������΢��վ�㣬ʹ���Ϊ�ƶ��˵�ȫ����Ϣ���壬��΢�Ź���ƽ̨�޷�Խӣ�չʾ������Ӧ�о��ã������ƶ������ƹ��ø��򵥡�</p>
                        <ul class="ul-icon">
                            <li><b></b><span>΢����</span></li>
                            <li><b></b><span>΢��Ӫ��</span></li>
                            <li><b></b><span>΢��Ӫ��</span></li>
                            <li><b></b><span>�ֻ�չʾ</span></li>
                            <li><b></b><span>��������</span></li>
                            <li><b></b><span>����ͬ��</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-show dn">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>��Բ�ͬ��ҵ���ṩ�������ܹ��ܵ�΢�Ż�������ϵͳƽ̨��ͬʱ���Ը�������������и߼����ܶ����뿪����</p>
                        <ul class="ul-icon">
                            <li><b></b><span>΢��֧��</span></li>
                            <li><b></b><span>΢�ź��</span></li>
                            <li><b></b><span>΢�˵�</span></li>
                            <li><b></b><span>΢��Աϵͳ</span></li>
                            <li><b></b><span>΢�������</span></li>
                            <li><b></b><span>΢����</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="pic">
            <div class="flexslider">
                <ul class="slides">
                    <li><img src="images/14423868578860.jpg" alt="" class="img"></li>
                    <li><img src="images/14423880884104.jpg" alt="" class="img"></li>
                    <li><img src="images/14423881046487.jpg" alt="" class="img"></li>

                </ul>
            </div>

        </div>
    </div>
</div>
<div class="c"></div>
<div class="service" id="servweb">
    <div class="wp">
        <div class="tit-i tit-i-1">
            <h3>��������</h3>
            <h5>service process</h5>
            <em></em>
        </div>
        <div class="about-info">
            <p>
                ����רҵ�ṩһվʽ���񣬴���վƷ�ƹ滮���Ӿ���ơ�<span>������ơ�</span>��Ч���⣬�����򿪷�����Ӫά����<span>����˼������</span><span>07</span><span>�����������</span><span>8</span><span>���ʱ�䣬����ӵ���˷ḻ�Ľ�վ�������ά���飬����֤���ǵĹ�����˳�����С�</span>
            </p>
            <p>
            <p>
                <span></span>
            </p>
            </p>				</div>
        <div class="process">
            <div class="con">
                <div class="pad">
                    <img src="images/process_bg.png" alt="">
                    <div class="txt">
                        <span class="s1">����</span>
                        <span class="s2">����</span>
                        <span class="s3">Э��</span>
                        <span class="s4">�滮</span>
                        <span class="s5">���ͨ</span>
                        <span class="s6">���</span>
                        <span class="s7">����޸�/ȷ��</span>
                        <span class="s8">ǰ������</span>
                        <span class="s9">����</span>
                        <span class="s10">���򿪷�</span>
                        <span class="s11">����</span>
                        <span class="s12">�ۺ����</span>
                    </div>
                    <div class="icon">
                        <em class="q1"></em>
                        <em class="q2"></em>
                        <em class="q3"></em>
                        <em class="q4"></em>
                        <em class="q5"></em>
                        <em class="q6"></em>
                        <em class="q7"></em>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="solution" id="solution">
    <div class="wp">
        <div class="tit-i">
            <h3>��ҵ�������</h3>
            <h5>industry solution</h5>
            <em></em>
        </div>
        <ul class="ul-solution">
            <li class="li1"><a href=""><span></span><em>IT��ҵ</em></a></li>
            <li class="li2"><a href=""><span></span><em>������ҵ</em></a></li>
            <li class="li3"><a href=""><span></span><em>��װ��ҵ</em></a></li>
            <li class="li4"><a href=""><span></span><em>������ҵ</em></a></li>
            <li class="li5"><a href=""><span></span><em>�ز���ҵ</em></a></li>
            <li class="li6"><a href=""><span></span><em>������ҵ</em></a></li>
            <li class="li7"><a href=""><span></span><em>��ý��ҵ</em></a></li>
            <li class="li8"><a href=""><span></span><em>�ҵ���ҵ</em></a></li>
            <li class="li9"><a href=""><span></span><em>������ҵ</em></a></li>
            <li class="li10"><a href=""><span></span><em>�̾���ҵ</em></a></li>
            <li class="li11"><a href=""><span></span><em>������ҵ</em></a></li>
            <li class="li12"><a href=""><span></span><em>��������</em></a></li>
        </ul>
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
<link rel="stylesheet" href="css/animate.css" />
<script type="text/javascript" src="js/lib.js"></script>
<link rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/flexslider.js"></script>
<script>
    var progressMove =  false;

    function checkMhd(){
        isMobile = $('#m-hd').is(':visible');
    }

    $(window).resize(function(){
        var process = $('.process');
        checkMhd();
        if( isMobile  ){
            process.removeClass('animate-box');
        }else{
            process.addClass('animate-box');
        }
    }).resize();

    $(window).scroll(function(){
        showWeb();
        showMobilephone();
        showProcess();
        showSolution();
    });

    function showWeb(){
        if(isScrolledIntoView('.ul-web') ){
            $('.ul-web li').each(function(i){
                $(this).delay(i*800).fadeIn(50,function(){
                    $(this).find('img').each(function(j){
                        $(this).delay(j*200).animate({opacity:1});
                    })
                });
            })
        }
    }

    function showProcess(){
        if(isScrolledIntoView('.process') ){
            $('.process .icon').each(function(){
                $(this).find('em').each(function(i){
                    $(this).delay(i*500).animate({opacity:1});
                })
            })
        }
    }

    /*function showProcess(){
     if( isScrolledIntoView('.process') ){
     if(isMobile){return;}
     if(progressMove){return;}
     if( !$('.process').is(':animated') ){
     $('.process').css('width',0).animate({width: '100%'},2000,function(){progressMove = true;});
     }
     }
     }*/

    function showMobilephone(){
        if( isScrolledIntoView('.tab-show') ){
            $('.tab-show .pic').each(function(){
                $(this).addClass($(this).data('animate'));
            })
            $('.tab-show .txt').each(function(){
                $(this).addClass($(this).data('animate'));
            })
        }

    }
    function showSolution(){
        if( isScrolledIntoView('.ul-solution', 300) ){
            $(".ul-solution").each(function(){
                $(".ul-solution li").animate({left: 0,top: 0,opacity: 1})
            })
        }
    }


    $('.ul-webset li a.close').click(function(){
        $('.ul-webset li .webset-pop').css({
            opacity: 0,
            left: '-100%',
            zIndex: -1
        });
    })
    $('.webset-pop .li2 a.close').click(function(){
        $('.webset-pop').hide();
    })
    $('.webset-pop .li3 a.close').click(function(){
        $('.webset-pop').hide();
    })


    $('.ul-txt li').click(function(){
        var txt = $(this).find('.txt-1');
        var _this = this;
        if(!txt.is(":visible")){
            $('.ul-txt li .txt-1').slideUp(500);
            txt.stop(false,true).slideDown(function(){
                $('.ul-txt li').removeClass('ok');
                $(_this).addClass('ok');
            });
        }else{
            var _this = this;
            txt.stop(false,true).slideUp(500,function(){
                $('.ul-txt li').removeClass('ok');
            });
        }
    });

    $('.ul-webset li .btn').click(function(){
        var webset_pop = $(this).parents('li').find('.webset-pop');
        webset_pop.css({zIndex: 10}).animate({
            opacity: 1,
            left: 0
        });
    });

    /*$(".ul-solution li").each(function (index, element) {
     if (index % 6 > 1) {
     $(this).css({ left: (index % 6 - 1) * 300 / (1 + Math.floor((index) / 6)) * 0.5,opacity: 0 });
     } else {
     $(this).css({ left: (index % 6 - 2) * 300 / (1 + Math.floor(index / 6)) * 0.5,opacity: 0 });
     }
     });*/

    $(document).ready(function (e) {

        $(".ul-solution li").hover(function () {
            $(this).find("span").animate({ top: 5}, 300)
        }, function () {
            $(this).find("span").animate({ top: 0 }, 300)

        })
    });


    $('.web-con .flexslider').flexslider({
        animation: "slide",
        animationLoop: true,
        slideshow: false,
        prevText:"",
        nextText:"",
        controlNav: true,
        directionNav: true
    });
    $(".TAB_CLICK_SLIDE li").click(function(){
        var tab = $(this).parent(".TAB_CLICK_SLIDE");
        var con = tab.attr("id");
        var idx = tab.find("li").index(this);
        $(this).addClass('hover').siblings(tab.find("li")).removeClass('hover');
        $(con).eq(idx).show().siblings(con).hide();
        $('.web-con .flexslider').flexslider(idx);
    });


</script>
</body>
</html>