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
        JOptionPane.showMessageDialog(null, "您尚未登录，请前往登录界面登录！");
        response.sendRedirect("login_index.jsp");
    }
%>

<% out.print(user.getUsername() + user.getPassword());%>
<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index1"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">首页</a></li>
                <li><a href="about.jsp" >课程服务</a></li>
                <li><a href="service.jsp" >精品课程</a></li>
                <li><a href="case.jsp" >课程搜索</a></li>
                <li><a href="news.jsp" >课程评价</a></li>
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
        <li><a href="about.jsp" >课程服务</a></li>
        <li><a href="service.jsp" >精品课程</a></li>
        <li><a href="case.jsp" >课程搜索</a></li>
        <li><a href="news.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
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
            <h3>艾玛案例</h3>
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
                                    <h3>LMP品牌站官网</h3>
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
                                    <h3>连洋鞋业网站</h3>
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
                                    <h3>礼悦利达</h3>
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
                                    <h3>竣腾影业网站</h3>
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
                                    <h3>国家信息安全中心网站</h3>
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
                                    <h3>中亿行官网</h3>
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
                                    <h3>中粮集团</h3>
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
                                    <h3>十方天使基金</h3>
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
            <h3>艾玛动态</h3>
            <h5>TUNIU <span>news</span></h5>
        </div>
        <ul class="ul-news-i">
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>03/01</em>2016</span>
                        <h3><a href="case-info.jsp">给设计师的网页动画设计基础</a></h3>
                        <p>随着技术的积累，网页中的动画也已经是遍地开花，它时尚，有趣，也人性化。不断涌现的新技术和新工</p>
                        <a href="case-info.jsp?_5_313.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14568143499060.jpg) 0 0 /100% 100% no-repeat;background: url(images/14568143499060.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">给设计师的网页动画设计基础</a></h3>
                            <p>随着技术的积累，网页中的动画也已经是遍地开花，它时尚，有趣，也人性化。不断涌现的新技术和新工</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>02/22</em>2016</span>
                        <h3><a href="case-info.jsp">常见的网站交互设计错误</a></h3>
                        <p>好的交互设计可以区分开有质量的网站和其他普通网站。然而，如果有明显的设计错误，它只会给予你本</p>
                        <a href="case-info.jsp?_5_310.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14561176714477.png) 0 0 /100% 100% no-repeat;background: url(images/14561176714477.png) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">常见的网站交互设计错误</a></h3>
                            <p>好的交互设计可以区分开有质量的网站和其他普通网站。然而，如果有明显的设计错误，它只会给予你本</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>02/15</em>2016</span>
                        <h3><a href="case-info.jsp">聊聊WEB网站和移动APP的六大交</a></h3>
                        <p>交互设计中的Web网站和移动App的设计，前者依托于PC的浏览器，后者则是依托于手机/平板电脑。不同的设</p>
                        <a href="case-info.jsp" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14555070718366.jpg) 0 0 /100% 100% no-repeat;background: url(images/14555070718366.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">聊聊WEB网站和移动APP的六大交</a></h3>
                            <p>交互设计中的Web网站和移动App的设计，前者依托于PC的浏览器，后者则是依托于手机/平板电脑。不同的设</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pad">
                    <div class="txt">
                        <span><em>01/26</em>2016</span>
                        <h3><a href="case-info.jsp">设计注册/登录界面时注意的常</a></h3>
                        <p>随着时代的发展，新用户注册、登录到真正加入一个网站的过程一直在变化，从简单的信息填写发展到全</p>
                        <a href="case-info.jsp?_5_299.html" class="more"></a>
                    </div>
                    <div class="hover">
                        <div class="img" style="background: url(images/14537972384811.jpg) 0 0 /100% 100% no-repeat;background: url(images/14537972384811.jpg) 0 0 no-repeat\9;"></div>
                        <div class="pad">
                            <h3><a href="case-info.jsp">设计注册/登录界面时注意的常</a></h3>
                            <p>随着时代的发展，新用户注册、登录到真正加入一个网站的过程一直在变化，从简单的信息填写发展到全</p>
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
            <h3>联系我们</h3>
            <h5><span>contact</span> TUNIU</h5>
        </div>
        <div class="contact-l">
            <ul class="ul-contact">
                <li class="li1">京东路33号未来城</li>
                <li class="li2"><a href="tel:022-87423050">022-87423050 (咨询) / <a href="tel:022-87423050">87423050 (售后)<br /><a href="tel:400-000-0000">400-000-0000 (咨询)</a><br /><a href="tel:13888888888">13888888888 (咨询)</li>
                <li class="li3"><a href="mailto:87432050@qq.com">87432050@qq.com</a></li>
            </ul>
        </div>
        <div class="contact-r">

            <form action="" class="contact-form" method="post">
                <div class="">
                    <input type="text" class="inp l" name="name" id="name" placeholder="您的姓名">
                    <input type="text" class="inp r" name="tel" id="tel" placeholder="您的联系方式">
                </div>
                <textarea cols="30" rows="10" name="txt_con" id="txt"></textarea>
                <input type="submit" value="提交您的需求" class="sub" id="sub">
            </form>
        </div>
    </div>
</div>
<div class="map">
    <div class="map-s">
        <a href="javascript:void(0);" class="btn"><em></em>点击展开地图</a>
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
                <dt>关于艾玛</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">我们是谁</a></li>
                        <li><a href="">我们服务的客户</a></li>
                        <li><a href="">我们的团队</a></li>
                        <li><a href="">客户监控系统</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>艾玛服务</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">网站建设</a></li>
                        <li><a href="">H5响应式 交互网站</a></li>
                        <li><a href="">移动端 & 微网站定制</a></li>
                        <li><a href="">服务流程</a></li>
                        <li><a href="">行业解决方案</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>艾玛案例</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">移动微站</a></li>
                        <li><a href="">平台电商</a></li>
                        <li><a href="">HTML5</a></li>
                        <li><a href="">企业网站</a></li>
                        <li><a href="">集团公司</a></li>
                        <li><a href="">加工制造</a></li>
                        <li><a href="">酒店餐饮</a></li>

                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>艾玛动态</dt>
                <dd>
                    <ul class="ul-fd">
                        <li><a href="">公司动态</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>联系我们</dt>
                <dd class="pr">
                    <p><a href="" class="weixin"></a><a href="" class="sina"></a><span class="weixin-pic"><img src="images/ewm.jpg" alt=""></span></p>
                    <p><b class="tel">400-000-0000</b></p>
                    <h5>艾玛服务热线</h5>
                </dd>
            </dl>
        </div>
    </div>
    <div class="fd-copy">
        <div class="wp">
            <p>
                <span>网络技术（北京）有限公司 Copyright&copy; 2007-2015 </span><a href=""><span>沪ICP备030xxxxx3号</span></a> <a href=""></a>
            </p>
        </div>
    </div>
</div>
<div class="side">
    <ul>
        <li><a href=""><div class="sidebox"><img src="images/side_icon02.png">在线咨询</div></a></li>
        <li><a href=""><div class="sidebox"><img src="images/side_icon01.png">在线咨询<!-- QQ:16757330 --></div></a></li>
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
            alert("姓名不能为空");
            return false;
        }
        if(!re.test(tel)){
            alert("请输入正确的联系方式");
            return false;
        }
        if(txt==""){
            alert("请输入您的需求");
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