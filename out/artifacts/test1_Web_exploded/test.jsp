<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        #mydiv {
            position: absolute;
            left:50%;
            top: 50%;
            margin-left: -200px;
            margin-top: -50px;
        }

        .mouseOver {
            background: #708090;
            color: #FFFAFA;
        }

        .mouseOut {
            background: #FFFAFA;
            color: #000000;
        }

    </style>

    <script type="text/javascript">

        //活动用户关联信息的函数
        function getMoreContents(){
            //xmlHttp
            var xmlHttp;
            //首先要获得用户输入
            var content = document.getElementById("keyword");
            if(content.value==="") {
                //如果元素是空，也可清空一下
                clearContent();
                return;
            }
            //alert(content.value);
            //然后给服务器发送数据
            //需要一个xmlHttp对象
            xmlHttp=createXmlHttp();
            //alert(xmlHttp);
            //var url="search?keyword="+escape(content.value);
            var url="search?keyword="+content.value;
            //true表示在调用send()方法后会继续执行
            xmlHttp.open("GET",url,true);
            //xmlHttp绑定的回调方法，这个回调方法会在xmlHttp状态改变时被调用
            //xmlhttp状态0-4，我们只关心4.完成之后再回调才有意义
            xmlHttp.onreadystatechange=callback;
            xmlHttp.send(null);

            function callback() {
                if(xmlHttp.readyState==4){
                    if(xmlHttp.status==200){
                        //获得数据
                        var result=xmlHttp.responseText;
                        //解析数据
                        var json=eval("("+result+")");
                        //获得数据后就可以动态的展示数据到输入框的下面
                        //alert(json);
                        setContent(json);
                    }
                }
            }
        }

        function createXmlHttp() {
            var xmlHttp;
            if(window.XMLHttpRequest) {
                xmlHttp=new XMLHttpRequest();
            }
            if(window.ActiveXObject) {
                xmlHttp=new ActiveXObject("MircoSoft.XMLHTTP");
                if(!xmlHttp) {
                    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                }
            }
            return xmlHttp;
        }

        //设置展示数据
        function setContent(contents) {

            //设置数据前先清空
            clearContent();
            //设置显示位置
            setLocation();

            var size=contents.length;

            <!-- alert(size + ":" + contents); -->

            for(var i=0; i<size; i++) {

                <!-- alert(i + ":" + contents[i] ) -->

                var nextNode=contents[i];
                var tr=document.createElement("tr");
                var td=document.createElement("td");
                td.setAttribute("border", "0");
                td.setAttribute("bgcolor", "#FFFAFA");
                td.onmouseover=function() {
                    console.log('mouseover')
                    console.log(this)
                    this.className='mouseOver';
                };
                td.onmouseout=function(){
                    console.log('mouseout')
                    console.log(this)
                    this.className='mouseOut';
                };
                td.onclick=function(){
                    //当用户鼠标点击关联数据框时，自动输入关联数据
                };
                var text=document.createTextNode(nextNode);
                td.appendChild(text);
                tr.appendChild(td);
                document.getElementById("content_table_body").appendChild(tr);

            }

        }

        //请空之前的数据
        function clearContent(){
            var contentTableBody=document.getElementById("content_table_body");
            var size=contentTableBody.childNodes.length;
            for(var i=size-1; i>=0; i--){
                contentTableBody.removeChild(contentTableBody.childNodes[i])
            }
            document.getElementById("popDiv").style.border="none";
        }

        //当输入框失去焦点时
        function keywordblur() {
            clearContent();
        }

        function setLocation() {
            var content=document.getElementById("keyword");
            var width=content.offsetWidth;
            var left=content["offsetLeft"];
            var top=content["offsetTop"]+content.offsetHeight;
            var popDiv=document.getElementById("popDiv");
            popDiv.style.border="black 1px solid";
            popDiv.style.left=left+"px";
            popDiv.style.top=top+"px";
            popDiv.style.width=width+"px";
            document.getElementById("content_table").style.width=width+"px";
        }

    </script>

    <title>s</title>
</head>
<body>




<div id="mydiv">
    <!-- 输入框 -->
    <input type="text" size=50 id="keyword" name="keyword" onkeyup="getMoreContents()" onblur="keywordblur()" onfocus="getMoreContents()" />
    <input type="button" value="百度一下" width="50px" />
    <!-- 内容展示 -->
    <div id="popDiv">
        <table id="content_table" bgcolor="#FFFAFA" border="0"
               cellspacing="0" cellpadding="0">
            <tbody id="content_table_body">
            <!-- 需要展示的内容 -->
            <!-- <tr><td>11111111111111</td></tr>  -->
            <!-- <tr><td>11111111111111</td></tr>  -->
            </tbody>

        </table>
    </div>
</div>




</body>
</html>