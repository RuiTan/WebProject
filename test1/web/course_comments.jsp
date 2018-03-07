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
        JOptionPane.showMessageDialog(null, "您尚未登录，请前往登录界面登录！");
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
                <li><a href="course_comments" >课程评价</a></li>
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
        <li><a href="course_comments" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/14415956107965.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp">
<div class="tit-i">
    <h3>艾玛动态</h3>
    <h5>TUNIU <span>NEWS</span></h5>
</div>
<ul class="ul-list">

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14573395395186.jpg" alt="网页设计,北京网页设计,艾玛网页设计,手机端网页设计"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/07</em>2016</span>
                        <h3><a href="case-info.jsp">让视觉设计变得高效且有说服力</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>视觉设计有一个天然的困难，因为视觉风格是一个很主观的感受，所以设计师很难说服领导和其他人认可</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14570594285205.png" alt="网页设计,北京网页设计,艾玛网页设计,手机端网页设计"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/04</em>2016</span>
                        <h3><a href="case-info.jsp">帮你设计好用触控手势的五种实用方法</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>随着触摸屏逐渐成为移动设备的标配，多点触控手势的广泛应用，让我们与手机、平板电脑甚至是笔记本</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14569776901944.jpg" alt="网页设计,艾玛网页设计,北京网页设计,手机端网页设计,网站开发"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/03</em>2016</span>
                        <h3><a href="case-info.jsp">极有可能被低估的三种有趣的网页设计趋势</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>设计出不同凡响的网站是许多设计师一直追求的事情，所以大家着迷各种时尚的元素，漂亮的配色，流行</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14568889657526.jpg" alt="移动端网页设计,移动端网站开发,手机站网站建设,北京网站建设"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/02</em>2016</span>
                        <h3><a href="case-info.jsp">毁掉移动应用设计的6个想当然</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>人们对应用界面的期望更多了，标准正在水涨船高。对于基于应用的公司，不当地忽视细节会损害应用的</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14568143499060.jpg" alt="网页设计,北京网页设计,艾玛网页设计,手机端网页制作,北京网站建设"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>03/01</em>2016</span>
                        <h3><a href="case-info.jsp">给设计师的网页动画设计基础指南</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>随着技术的积累，网页中的动画也已经是遍地开花，它时尚，有趣，也人性化。不断涌现的新技术和新工</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14567250547258.jpg" alt="网页设计,艾玛网页设计,北京网页设计,手机端网页设计,网站制作"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/29</em>2016</span>
                        <h3><a href="case-info.jsp">为新手量身打造的UI界面配色方法</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>如何快速的选择或搭配颜色呢？“选择”和“搭配颜色”，听到这两个词汇的时候，是不是从潜意识上就</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14563773668654.jpg" alt="网页设计,网页制作,网站建设,网站开发,艾玛网站设计,北京网站建设,手机端网页制作"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/25</em>2016</span>
                        <h3><a href="case-info.jsp">让你的网页脱颖而出7项秘诀</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>取悦用户的关键在于像用户一样思考。并不是每一次创新、每一次重塑、每一种新技术都能让用户愉悦，</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14561176714477.png" alt="网站设计,艾玛网站设计,北京网站设计,手机端网站设计"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/22</em>2016</span>
                        <h3><a href="case-info.jsp">常见的网站交互设计错误</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>好的交互设计可以区分开有质量的网站和其他普通网站。然而，如果有明显的设计错误，它只会给予你本</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14558457392531.jpg" alt="网页设计,艾玛网页设计,北京网页设计,网站开发,手机端网页制作"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/19</em>2016</span>
                        <h3><a href="case-info.jsp">交互设计师应该知道的「数据分析」</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>数据分析，不仅仅是产品或运营的“专利”，作为交互设计师也需要掌握这方面的技能，来帮助我们做更</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14557667596668.jpg" alt="网页设计,艾玛网页设计,北京网页设计,手机端网页设计,网站设计"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/18</em>2016</span>
                        <h3><a href="case-info.jsp">悄然流行的混合型视差网页设计趋势</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>如果你仔细观察那些最新的使用了视差技术的网页，你会发现这些网站所采用的视差设计已经似是而非了</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14556746991126.jpg" alt="网站设计,艾玛网站设计,北京网站设计,手机端网站设计"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/17</em>2016</span>
                        <h3><a href="case-info.jsp">设计和艺术有哪些本质区别</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>设计与艺术，这两者之间有着很多的相似之处，但本质上却属于不同的学科领域。它们有着各自不同的目</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
            </div>
        </div>
    </li>

    <li>
        <div class="pad">
            <div class="pic"><a href="case-info.jsp"><img src="images/14555888017922.jpg" alt="网页设计,艾玛网页设计,北京网页设计,网站开发,手机端网站建设"></a></div>
            <div class="bor">
                <div class="txt">
                    <div class="title">
                        <span><em>02/16</em>2016</span>
                        <h3><a href="case-info.jsp">移动端网页设计简明指南</a></h3>
                    </div>
                    <a href="case-info.jsp"><p>也许“移动端优先”的说法并不准确，但是“移动端屏幕为主”的说法和实际状况已经非常接近了。打造</p></a>
                </div>
                <div class="more"><a href="case-info.jsp" class="r">查看更多 ></a></div>
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

</body>
</html>