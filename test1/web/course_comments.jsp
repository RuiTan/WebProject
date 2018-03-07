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
<div id="ban-in" style="background-image:url(images/14415956107965.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>���궯̬</h3>
    <h5>TUNIU <span>NEWS</span></h5>
</div>
<ul class="ul-list">

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14573395395186.jpg" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ���"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/07</em>2016</span>
                        <h3><a href="case-info.jsp">���Ӿ���Ʊ�ø�Ч����˵����</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>�Ӿ������һ����Ȼ�����ѣ���Ϊ�Ӿ������һ�������۵ĸ��ܣ��������ʦ����˵���쵼���������Ͽ�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14570594285205.png" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ���"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/04</em>2016</span>
                        <h3><a href="case-info.jsp">������ƺ��ô������Ƶ�����ʵ�÷���</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>���Ŵ������𽥳�Ϊ�ƶ��豸�ı��䣬��㴥�����ƵĹ㷺Ӧ�ã����������ֻ���ƽ����������ǱʼǱ�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14569776901944.jpg" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ���,��վ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/03</em>2016</span>
                        <h3><a href="case-info.jsp">���п��ܱ��͹���������Ȥ����ҳ�������</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>��Ƴ���ͬ�������վ��������ʦһֱ׷������飬���Դ�����Ը���ʱ�е�Ԫ�أ�Ư������ɫ������</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14568889657526.jpg" alt="�ƶ�����ҳ���,�ƶ�����վ����,�ֻ�վ��վ����,������վ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/02</em>2016</span>
                        <h3><a href="case-info.jsp">�ٵ��ƶ�Ӧ����Ƶ�6���뵱Ȼ</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>���Ƕ�Ӧ�ý�������������ˣ���׼����ˮ�Ǵ��ߡ����ڻ���Ӧ�õĹ�˾�������غ���ϸ�ڻ���Ӧ�õ�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14568143499060.jpg" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ����,������վ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/01</em>2016</span>
                        <h3><a href="case-info.jsp">�����ʦ����ҳ������ƻ���ָ��</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>���ż����Ļ��ۣ���ҳ�еĶ���Ҳ�Ѿ��Ǳ�ؿ�������ʱ�У���Ȥ��Ҳ���Ի�������ӿ�ֵ��¼������¹�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14567250547258.jpg" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ���,��վ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/29</em>2016</span>
                        <h3><a href="case-info.jsp">Ϊ������������UI������ɫ����</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>��ο��ٵ�ѡ��������ɫ�أ���ѡ�񡱺͡�������ɫ���������������ʻ��ʱ���ǲ��Ǵ�Ǳ��ʶ�Ͼ�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14563773668654.jpg" alt="��ҳ���,��ҳ����,��վ����,��վ����,������վ���,������վ����,�ֻ�����ҳ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/25</em>2016</span>
                        <h3><a href="case-info.jsp">�������ҳ��ӱ����7���ؾ�</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>ȡ���û��Ĺؼ��������û�һ��˼����������ÿһ�δ��¡�ÿһ�����ܡ�ÿһ���¼����������û����ã�</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14561176714477.png" alt="��վ���,������վ���,������վ���,�ֻ�����վ���"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/22</em>2016</span>
                        <h3><a href="case-info.jsp">��������վ������ƴ���</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>�õĽ�����ƿ������ֿ�����������վ��������ͨ��վ��Ȼ������������Ե���ƴ�����ֻ������㱾</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14558457392531.jpg" alt="��ҳ���,������ҳ���,������ҳ���,��վ����,�ֻ�����ҳ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/19</em>2016</span>
                        <h3><a href="case-info.jsp">�������ʦӦ��֪���ġ����ݷ�����</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>���ݷ������������ǲ�Ʒ����Ӫ�ġ�ר��������Ϊ�������ʦҲ��Ҫ�����ⷽ��ļ��ܣ���������������</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14557667596668.jpg" alt="��ҳ���,������ҳ���,������ҳ���,�ֻ�����ҳ���,��վ���"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/18</em>2016</span>
                        <h3><a href="case-info.jsp">��Ȼ���еĻ�����Ӳ���ҳ�������</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>�������ϸ�۲���Щ���µ�ʹ�����Ӳ������ҳ����ᷢ����Щ��վ�����õ��Ӳ�����Ѿ����Ƕ�����</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14556746991126.jpg" alt="��վ���,������վ���,������վ���,�ֻ�����վ���"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/17</em>2016</span>
                        <h3><a href="case-info.jsp">��ƺ���������Щ��������</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>�����������������֮�����źܶ������֮������������ȴ���ڲ�ͬ��ѧ�������������Ÿ��Բ�ͬ��Ŀ</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14555888017922.jpg" alt="��ҳ���,������ҳ���,������ҳ���,��վ����,�ֻ�����վ����"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/16</em>2016</span>
                        <h3><a href="case-info.jsp">�ƶ�����ҳ��Ƽ���ָ��</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>Ҳ���ƶ������ȡ���˵������׼ȷ�����ǡ��ƶ�����ĻΪ������˵����ʵ��״���Ѿ��ǳ��ӽ��ˡ�����</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">�鿴���� ></a></div>
            </div>
        </div>
    </li>
</ul>
<div class="c"></div>
<div class="pages">

    <a href='' class='a-prev'><</a> <a class='page-on'>1</a> <a href="/news5_0-2">2</a> <a href="/news5_0-3">3</a> <a href="/news5_0-4">4</a> <a href="/news5_0-5">5</a> <a class='a-next' href="/news5_0-2">></a>
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

</body>
</html>