<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课程服务</title>
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
    <script type="text/javascript" src="js/echarts.js" ></script>
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
<body>

<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index.jsp"><img src="images/logo.png" alt=""></a></div>
        <div id="nav">
            <ul>
                <li><a href="index.jsp"  >首页</a></li>
                <li><a href="course_service.jsp"  style="color:#e4392a; border-bottom:3px solid #e4392a;">课程服务</a></li>
                <li><a href="excellent_course.jsp" >精品课程</a></li>
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
        <li><a href="course_service.jsp"  class="v1">课程服务</a></li>
        <li><a href="excellent_course.jsp" >精品课程</a></li>
        <li><a href="course_research.jsp?page=1" >课程搜索</a></li>
        <li><a href="course_comments.jsp" >课程评价</a></li>
        <li><a href="contact.jsp">网站留言</a></li>
    </ul>
</div>
<div class="c"></div>	<div id="bd">
    <div id="ban-in" style="background-image:url(images/case_service.jpg)">
        <div class="ban-bg"></div>
    </div>
    <div class="wp" id="whous">
        <div class="tit-i">
            <h3>课程服务</h3>
            <h5>Course <span>Service</span></h5>
        </div>
        <div class="c"></div>
        <div class="about-info">
            选修课作为当前大学教学的重要组成部分，是大学生在高校学习期间的有益补充，如何在高校开设的选修课程中让学生根据自身需求选择适合个人的课程成为亟待解决的问题。本设计项目以获取选修课信息、提供学生对选修课的意见建议，评价评分为基础，通过数据库对信息的汇总归纳，形成选修课程的学生反馈、精品课程推荐、课程内容互动交流等功能，从而进一步帮助学生选到最适合自身的选修课。
        </div>
    </div>

    <div class="team" id="ourteam">
        <div class="wp">
            <div class="tit-i">
                <h3>课程数据分析</h3>
                <h5>Data  <span>Analyse</span></h5>
            </div>
        </div>
        <div class="flexslider">
            <ul class="slides">

                <li>
                    <div class="wp">
                        <div class="txt">
                            <h3 data-animate="fadeInDown" class="animated">文史课程评论数据分析</h3>
                            <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                            通过学生对课程的评分，从数据库中抽取数据，产生直方图及折线图。<br/>
                            从图表中可以看出，评分最高的课程为世界大战与局部战争，平均评分为4.98，评论数量为32；而评分最低的课程为书法欣赏，平均评分为2.05，评论数量为71。
                            图表直观的反映了所有文史课程的评分及评论数量的分布
                        </div>
                        <div class="pic">
                            <div id="main1" style="height: 400px; width: 600px"></div>
                        </div>

                    </div>
                </li>
                <li>
                    <div class="wp">
                        <div class="txt">
                            <h3 data-animate="fadeInDown" class="animated">哲法课程评论数据分析</h3>
                            <p data-animate="fadeInDown" class="animated">
                                <p class="animated fadeInDown">
                                    与文史课程数据分析不同的是，哲法课程分析采用了饼状图结构，通过饼状占比大小，可以直观的看出课程的平均评分情况以及评论数量。
                                    同时可以通过点击课程索引，决定该课程数据是否在饼状图中显示。
                                </p>
                            </p>
                        </div>
                        <div class="pic">
                            <div id="main2" style="height: 400px; width: 600px"></div>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="wp">
                        <div class="txt">
                            <h3 data-animate="fadeInDown" class="animated">嘉定校区选课情况分析</h3>
                            <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                            我们喜爱创新，对创意设计有着极高的热情，并准备着为一个好的点子通宵达旦。我们不仅提供漂亮的设计，更知道设计是一种方法或策略，而非仅仅是美术自由，设计载体是品牌，强调设计的实用性。
                        </p></p>

                        </div>
                    </div>
                    <div class="pic">
                        <div id="main3" style="height: 400px; width: 600px;"></div>
                    </div>
                </li>

                <li>
                    <div class="wp">
                        <div class="txt">
                            <h3 data-animate="fadeInDown" class="animated">课程分类情况分析</h3>
                            <p data-animate="fadeInDown" class="animated"><p class="animated fadeInDown">
                            根据已确认的设计稿进行每一个页面的制作。我们会按照我们的W3C制作标准进行web开发，使得更简易、可方便调节、各浏览器兼容性强、可扩展等，让用户体验达到一定高度！
                        </p>
                            <p class="animated fadeInDown">
                                我们将以最大程度上减少页面代码，使爬行蜘蛛能带走更多有用有价值的信息。并且我们将严格遵守标准CSS命名规则，使搜索引擎能够快速的认知网页内容板块结构，快速收录！
                            </p></p>
                        </div>
                        <div class="pic">
                            <div id="main4" style="height: 400px; width: 600px;"></div>
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
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<script type="text/javascript" src="js/flexslider.js"></script>
<script type="text/javascript">

    var myChart1 = echarts.init(document.getElementById('main1'));
    option = {
        title : {
            text: '文史课程评论情况分析'
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['平均评分','评论数量']
        },
        toolbox: {
            show : true,
            feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        dataZoom: [
            {
                type: 'slider',
                start: 0,
                end: 20
            }
        ],
        xAxis : [
            {
                show : false,
                type : 'category',
                data : ['日本文化概论','英语语音基础','英汉口译','中国历史与文化（中外）','声乐演唱与欣赏','形体训练','二胡技法教学','美术欣赏','广告学概论','明清古瓷鉴赏','书法欣赏','古筝演奏','舞蹈表演','大学生舞蹈团排练','中外剪纸艺术','美术素描','文化景观艺术分析与鉴赏','色彩表现','摄影技艺','世界大战与局部战争','战争简史与军事高科技概论','科幻电影赏析','自然生态与景观美学','中外器乐作品欣赏','中阮演奏','钢琴艺术','音乐原理与鉴赏','歌剧与歌曲欣赏','中国竹笛(初级)','中国竹笛(中级)','中国竹笛演奏艺术(高级)','音乐艺术概论','艺术与心灵成长','时尚与跨界设计','影视艺术欣赏','道家经典导读','演讲与口才','佛教经典与文化','《三国志》与三国文化','言语交际','逻辑学','社会心理学','台湾文学与电影','西方哲学与文化','中国传统文化','宗教与文化','中国诗歌经典','中国戏剧(曲)经典','电影经典','西方哲学史通论','现代西方哲学','世界通史','中国通史']
            }
        ],
        yAxis : [
            {
                type : 'value',
                name: '平均评分',
                max: 7,
                min: 0
            },{
                type : 'value',
                name: '评论数量',
                max : 100,
                min : 0
            }
        ],
        series : [
            {
                name:'平均评分',
                type:'bar',
                data:[4.39,2.99,2.16,4.01,4.38,4.28,3.39,4.11,4.25,2.89,2.05,3.15,2.55,3.56,2.37,4.36,3.53,4.94,4.13,4.98,3.58,2.93,3.80,4.64,4.86,3.99,4.71,4.01,2.18,4.67,2.19,3.30,4.47,3.30,3.43,3.93,4.91,4.80,3.29,3.19,2.20,4.42,2.15,4.03,3.07,4.05,4.16,2.09,3.56,4.56,4.80,2.22,3.15],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                },
                markLine : {
                    data : [
                        {type : 'average', name: '平均值'}
                    ]
                }
            },
            {
                name:'评论数量',
                type:'bar',
                // data: [1,1,1,1,1,1,1,1,1,1,1,1],
                yAxisIndex: 1,
                data:[50,87,6,51,90,2,32,72,98,50,71,46,83,79,75,14,64,88,39,32,65,49,94,37,58,98,92,45,13,96,4,17,7,70,51,47,27,24,69,41,68,79,41,79,15,27,32,61,57,92,15,70,55],
                markPoint : {
                    data : [
                        {name : '最高', value : 98, xAxis: 8, yAxis: 98},
                        {name : '最低', value : 2, xAxis: 5, yAxis: 2}
                    ]
                },
                markLine : {
                    data : [
                        {type : 'average', name : '平均值'}
                    ]
                }
            }
        ]
    };

    myChart1.setOption(option);
</script>
<script type="text/javascript">
    var myChart2 = echarts.init(document.getElementById('main2'));
    option = {
        title : {
            text: '哲法类课程评论情况',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['女性权利的法律保护','孙子兵法及其应用','军事思想与军事法概论','法律电影赏析','中国知识产权保护（中外）','比较政治制度','中国公务员制度','当代中国外交','人权与法制','西方哲学史','证券市场与证券法','合同法','婚姻家庭及财产继承法','物权法','中国思想经典']
        },
        series : [
            {
                name: '平均评论',
                type: 'pie',
                radius : '45%',
                center: ['55%', '30%'],
                label: {
                    show: false
                },
                data:[
                    {value:3.56,name:'女性权利的法律保护'},
                    {value:2.37,name:'孙子兵法及其应用'},
                    {value:4.36,name:'军事思想与军事法概论'},
                    {value:3.53,name:'法律电影赏析'},
                    {value:4.94,name:'中国知识产权保护（中外）'},
                    {value:4.13,name:'比较政治制度'},
                    {value:4.98,name:'中国公务员制度'},
                    {value:3.58,name:'当代中国外交'},
                    {value:2.93,name:'人权与法制'},
                    {value:3.8,name:'西方哲学史'},
                    {value:4.64,name:'证券市场与证券法'},
                    {value:4.86,name:'合同法'},
                    {value:3.99,name:'婚姻家庭及财产继承法'},
                    {value:2.18,name:'物权法'},
                    {value:4.67,name:'中国思想经典'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            },
            {
                name: '评论数量',
                type: 'pie',
                radius: '45%',
                center: ['75%', '70%'],
                label: {
                    show: false
                },
                data: [
                    {value:32,name:'女性权利的法律保护'},
                    {value:65,name:'孙子兵法及其应用'},
                    {value:49,name:'军事思想与军事法概论'},
                    {value:94,name:'法律电影赏析'},
                    {value:37,name:'中国知识产权保护（中外）'},
                    {value:58,name:'比较政治制度'},
                    {value:98,name:'中国公务员制度'},
                    {value:92,name:'当代中国外交'},
                    {value:45,name:'人权与法制'},
                    {value:13,name:'西方哲学史'},
                    {value:96,name:'证券市场与证券法'},
                    {value:4,name:'合同法'},
                    {value:17,name:'婚姻家庭及财产继承法'},
                    {value:7,name:'物权法'},
                    {value:70,name:'中国思想经典'}
                ]
            }
        ]
    };
    myChart2.setOption(option);
</script>
<script type="text/javascript">
    var myChart3 = echarts.init(document.getElementById('main3'));

    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        legend: {
            data:['额定人数','已选人数','选课百分比']
        },
        dataZoom: [
            {
                type: 'slider',
                start: 0,
                end: 20
            }
        ],
        xAxis: [
            {
                type: 'category',
                show: false,
                data: ['成功心理训练','大学生创业基础','数据分析与统计方法','人力资源开发与管理','社会保障概论','公司理财','货币金融学','管理学原理','房地产评估','MATLAB基础及工程应用','传统文化与幸福人生','环境健康危害与防护','国际金融导引','影视艺术欣赏','中国公务员制度','人权与法制','合同法','物权法','中国思想经典','改变世界的材料','智能材料与智慧生活','Matlab语言及工程应用','网页制作教程','模块化电子系统设计','手机应用开发','视觉与智能学习探秘','嵌入式系统创新实践','ACM程序设计和高级算法（上）','人工智能技术与应用','跨文化交际概论（中外）','生活化学','中国历史与文化（中外）','实用医学基础知识教程','大学生保健学','灾难逃生与自救','运输规划课程设计','物流信息系统课程设计','物流设备与技术课程设计','铺面工程课程设计','轨道工程课程设计','地铁车站结构工程课程设计','物流系统规划课程设计','女性心理素质提升','国乐艺术赏析——古筝入门','疾病与分子生物学','生命的奥秘——从基因说起','美术欣赏','明清古瓷鉴赏','汽车文化','汽车发动机概论','现代光学简介','海水下的秘密','地球物理趣谈','揭秘极地与海洋','科技文献检索与利用','世界大战与局部战争','高技术在军事上的应用','军事思想与军事法概论','国防教育论坛','数码摄影基础','轨道交通概论','世界高速铁路发展概论','太极拳中的力学与智慧','电脑图像创制技艺','德国教育与职业','法律电影赏析','英美文化、社会与政治概论(英文)','《资本论》解读','马克思主义政治经济学','创新与传播','绘画鉴赏与实践（上）'],
                axisPointer: {
                    type: 'shadow'
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '人数',
                min: 0,
                max: 150,
                interval: 50,
                axisLabel: {
                    formatter: '{value} 人'
                }
            },
            {
                type: 'value',
                name: '百分比',
                min: 0,
                max: 100,
                interval: 5,
                axisLabel: {
                    formatter: '{value} %'
                }
            }
        ],
        series: [
            {
                name:'额定人数',
                type:'bar',
                data:[70,70,70,60,60,40,60,70,70,100,100,70,70,61,30,30,60,60,70,70,40,100,100,50,70,70,30,70,70,15,70,10,70,70,30,70,40,40,70,40,40,40,40,20,71,70,80,80,68,68,68,70,70,70,50,130,120,130,130,50,45,40,30,70,35,60,70,70,70,70,25],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            },
            {
                name:'已选人数',
                type:'bar',
                data:[65,16,23,55,35,38,58,27,29,62,18,34,67,60,16,24,17,25,60,10,11,48,93,34,43,22,16,30,21,11,22,3,68,25,30,61,26,26,37,32,30,26,34,16,71,11,80,80,54,24,13,11,46,17,32,125,101,61,129,46,23,15,21,55,8,24,20,44,18,26,4],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            },
            {
                name:'选课百分比',
                type:'line',
                yAxisIndex: 1,
                data:[92.86,22.86,32.86,91.67,58.33,95,96.67,38.57,41.43,62,18,48.57,95.71,98.36,53.33,80,28.33,41.67,85.71,14.29,27.5,48,93,68,61.43,31.43,53.33,42.86,30,73.33,31.43,30,97.14,35.71,100,87.14,65,65,52.86,80,75,65,85,80,100,15.71,100,100,79.41,35.29,19.12,15.71,65.71,24.29,64,96.15,84.17,46.92,99.23,92,51.11,37.5,70,78.57,22.86,40,28.57,62.86,25.71,37.14,16],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            }
        ]
    };



    myChart3.setOption(option);
</script>
<script type="text/javascript">
    var myChart4 = echarts.init(document.getElementById('main4'));
    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c}"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data:['哲法','文史','经管','自然','艺术','生命','其他','跨学科','工程']
        },
        series: [
            {
                name:'课程数目',
                type:'pie',
                selectedMode: 'single',
                radius: [0, '30%'],

                label: {
                    normal: {
                        position: 'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:88, name:'社会科学', selected:true},
                    {value:65, name:'人类文化'},
                    {value:59, name:'工程技术'}
                ]
            },
            {
                name:'课程数目',
                type:'pie',
                radius: ['40%', '55%'],
                label: {
                    normal: {
                        formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  ',
                        backgroundColor: '#eee',
                        borderColor: '#aaa',
                        borderWidth: 1,
                        borderRadius: 4,
                        rich: {
                            a: {
                                color: '#999',
                                lineHeight: 22,
                                align: 'center'
                            },
                            hr: {
                                borderColor: '#aaa',
                                width: '100%',
                                borderWidth: 0.5,
                                height: 0
                            },
                            b: {
                                fontSize: 16,
                                lineHeight: 33
                            },
                            per: {
                                color: '#eee',
                                backgroundColor: '#334455',
                                padding: [2, 4],
                                borderRadius: 2
                            }
                        }
                    }
                },
                data:[
                    {value:22,name:'哲法'},
                    {value:54,name:'文史'},
                    {value:12,name:'经管'},
                    {value:10,name:'自然'},
                    {value:33,name:'艺术'},
                    {value:22,name:'生命'},
                    {value:14,name:'其他'},
                    {value:10,name:'跨学科'},
                    {value:35,name:'工程'}
                ]
            }
        ]
    };


    myChart4.setOption(option);
</script>
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