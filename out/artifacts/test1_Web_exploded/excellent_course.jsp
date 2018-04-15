<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>精品课程</title>
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
        response.sendRedirect("login_index.jsp");
    }
%>

<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index.jsp"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp" >首页</a></li>
                <li><a href="course_service.jsp" >课程服务</a></li>
                <li><a href="excellent_course.jsp"   style="color:#e4392a; border-bottom:3px solid #e4392a;">精品课程</a></li>
                <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
                <li><a href="course_comments.jsp" >课程评价</a></li>
                <li><a href="contact.jsp">网站留言</a></li>

            </ul>
            <div style="text-align: center; align-content: center; padding-top: 20px;">
                欢迎<a href="#">
                <%=session1.getAttribute("username")%>
            </a>来到同济大学选修课百科互动平台
                <a href="ql">
                    <p style="text-align: end">退出登录</p>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="c"></div>
<div id="m-hd">
    <a href="index.jsp" class="m-logo"><img src="images/logo.png" alt=""></a>
    <div class="m-trigger"></div>
    <ul class="m-nav">
        <li><a href="index.jsp">首页 </a></li>
        <li><a href="course_service.jsp" >课程服务</a></li>
        <li><a href="excellent_course.jsp"  class="v1">精品课程</a></li>
        <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
<div id="ban-in" style="background-image:url(images/exc_course.jpg)">
    <div class="ban-bg"></div>
</div>
<div class="wp" id="webbuit">
<div class="tit-i">
    <h3>经济管理</h3>
    <h5>Economic <span>Management</span></h5>
</div>
<div class="about-info">
    <p>
        “经济管理者为实现预定目标，对社会经济活动或生产经营活动所进行的计划、组织、指挥、协调和监督”<span>——了解经济，掌握世界潮流。</span>
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
    <a href="case-info.jsp?lessons_num=7016501">
        <h3>国际金融导引</h3>
    </a>
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
    <a href="case-info.jsp?lessons_num=3025801">
        <h3>工程经济与企业管理</h3>
    </a>

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
    <a href="case-info.jsp?lessons_num=13010301">
    <h3>中国社会经济</h3>
    </a>
</li>
</ul>
<div class="h50"></div>
</div>
<div class="c"></div>
<div class="bg-blue fix" id="weiweb">
    <div class="wp">
        <div class="tit-i">
            <h3>计算机科学</h3>
            <h5><span>Computer </span>Science</h5>
        </div>
        <div class="about-info">
            <p>
                “系统性研究信息与计算的理论基础以及它们在计算机系统中如何实现与应用”——领略科技带来的美，学习计算机带来的奇妙体验。
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
                <a href="case-info.jsp?lessons_num=10036901">
                    <h3>模块化电子系统设计</h3>
                </a>
            </li>
            <li class="li2">
                <div class="block">
                    <img src="images/n5.png" alt="">
                    <img src="images/n6.png" alt="">
                </div>
                <a href="case-info.jsp?lessons_num=46001101">
                    <h3>电脑图像创制技艺</h3>
                </a>
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
                <a href="case-info.jsp?lessons_num=10019601">
                <h3>网页制作教程</h3>
                </a>
            </li>
            <li class="li4">
                <div class="block">
                    <img src="images/n13.png" alt="">
                    <img src="images/n14.png" alt="">
                </div>
                <a href="case-info.jsp?lessons_num=10048701">
                <h3>手机应用开发</h3>
                </a>
            </li>
        </ul>
    </div>
</div>
<div class="wp" id="webmobel">
    <div class="tit-i">
        <h3>艺术类课程</h3>
        <h5>Art <span>Courses</span></h5>
    </div>
    <div class="about-info">
        <p>
            “用形象来反映现实但比现实有典型性的社会意识形态”——陶冶情操，置身高雅，享受生活。
        </p>
    </div>
    <div class="c"></div>
    <div class="web-con pr">
        <ul class="ul-tab TAB_CLICK_SLIDE" id=".tab-show">
            <li class="hover"><a href="javascript:void(0);"><h3>星期音乐会</h3><span>Weekly Concert</span></a></li>
            <li ><a href="javascript:void(0);"><h3>影视艺术欣赏</h3><span>Film and television art</span></a></li>
            <li ><a href="javascript:void(0);"><h3>明清古瓷鉴赏</h3><span>Appreciation of ancient Porcelain</span></a></li>
        </ul>
        <div class="shou"><img src="images/shou.png" alt=""></div>
        <div class="tab-con-box">
            <div class="tab-show ">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>每周一次的星期音乐会，在繁重的学习任务期间抽点听一场绝妙的音乐会，想必是极好的了。</p>
                        <ul class="ul-icon">
                            <li><b></b><span>交响乐</span></li>
                            <li><b></b><span>音乐大师</span></li>
                            <li><b></b><span>好评如潮</span></li>
                            <li><b></b><span>陶冶情操</span></li>
                            <li><b></b><span>休闲放松</span></li>
                            <li><b></b><span>给分超赞</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-show dn">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>从“追求永恒”与“第七艺术”的诞生、语言的自觉电影艺术独立之途、元电影与巴赞理论、电影艺术与戏剧艺术、电影与造型艺术的关系和电影的文化维度、电影的仪式文化和电影的意识形态、电影的民族文化性与世界文化性等方面讲述如何去鉴赏影视作品，领略不同的艺术人生。</p>
                        <ul class="ul-icon">
                            <li><b></b><span>经典影片</span></li>
                            <li><b></b><span>观影盛宴</span></li>
                            <li><b></b><span>影评交流</span></li>
                            <li><b></b><span>精彩片花</span></li>
                            <li><b></b><span>老师特别棒</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-show dn">
                <div class="tab-con">
                    <div data-animate="fadeInDown" class="txt animated">
                        <p>瓷器是古代劳动人民的一个重要的创造，世界上许多文明的初期虽然都用陶土烧制最原始的生活器皿，但在中国，陶器却发展升华成了瓷器。千年以来，陶瓷一直影响着中国人的生活。面对琳琅满目、良莠不齐的古陶瓷，怎样独具慧眼，做到雾里看花而不“打眼”，就需要具备更多的古陶瓷知识、收藏知识，以增加鉴赏阅历。</p>
                        <ul class="ul-icon">
                            <li><b></b><span>瓷器历史</span></li>
                            <li><b></b><span>年代特点</span></li>
                            <li><b></b><span>工艺流程</span></li>
                            <li><b></b><span>瓷器文化</span></li>
                            <li><b></b><span>瓷器鉴定</span></li>
                            <li><b></b><span>博物馆探秘</span></li>
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
            <h3>精品课程推荐</h3>
            <h5>Excellent courses</h5>
            <em></em>
        </div>
        <div class="about-info">
            <p>
                精品课程仁者见仁智者见智，我们需要你的意见建议，让更多人选出自己心中的精品课程。
            </p>
            <p></div>
    </div>
</div>
<div class="solution" id="solution">
    <div class="wp">
        <div class="tit-i">
            <h3>选修课程分类</h3>
            <h5>Categories</h5>
            <em></em>
        </div>
        <ul class="ul-solution">
            <li class="li1"><a href="#"><span></span><em>计算机</em></a></li>
            <li class="li2"><a href="#"><span></span><em>机械制造</em></a></li>
            <li class="li3"><a href="#"><span></span><em>设计创意</em></a></li>
            <li class="li4"><a href="#"><span></span><em>生命健康</em></a></li>
            <li class="li5"><a href="#"><span></span><em>建筑学</em></a></li>
            <li class="li6"><a href="#"><span></span><em>电气信息</em></a></li>
            <li class="li7"><a href="#"><span></span><em>艺术传媒</em></a></li>
            <li class="li8"><a href="#"><span></span><em>材料科技</em></a></li>
            <li class="li9"><a href="#"><span></span><em>车辆工程</em></a></li>
            <li class="li10"><a href="#"><span></span><em>能源工程</em></a></li>
            <li class="li11"><a href="#"><span></span><em>文史类</em></a></li>
            <li class="li12"><a href="#"><span></span><em>哲学法律</em></a></li>
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
                <span>同济大学软件学院谈瑞 同济大学软件学院陈超 同济大学汽车学院李扬 Copyright&copy; 2018 </span><a href="#"></a> <a href="#"></a>
            </p>
        </div>
    </div>
</div>
<div class="side2">
    <ul>
        <li><a href="#"><img src="images/r_icon1.png" alt=""></a><div class="weixin"><em></em><img src="images/ewm.png" alt=""></div></li>
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