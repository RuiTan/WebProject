<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>选修百科</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <!-- Style --> <link rel="stylesheet" href="css/login_style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body style="background:url(images/background.jpg) 0.7; background-position: center;">
<jsp:useBean id="user" class="com.tanrui.bean.get_user_info"></jsp:useBean>
<%
    HttpSession session1 = request.getSession(false);
    if (session1.getAttribute("username") != "" && session1.getAttribute("username") != null){
        response.sendRedirect("index.jsp");
    }
%>
<script language="JavaScript">
    <%
        if (session1.getAttribute("login_success") != null){
            int login_success = (int) session1.getAttribute("login_success");
            if (login_success == 0){
                out.print("alert(\"用户密码错误，请重新输入密码\");");
            }else if (login_success == -1){
                out.print("alert(\"用户名不存在，请返回登录页面注册\");");
            }else {
            }
        }
        else if (session1.getAttribute("register_success") != null){
            int register_success = (int) session1.getAttribute("register_success");
            if (register_success == 0){
                out.print("alert(\"用户已存在，请直接登录或更改用户名注册\")");
            }else if (register_success == 1){
                out.print("alert(\"注册成功，请前往登录页面登录\")");

            }
        }
    %>
</script>
<div>
        <!--<h1>Welcome To Elective Courses' Encyclopedia</h1>-->
        <h1>同济大学选修课百科</h1>
        <div class="container w3layouts agileits">
            <div class="login w3layouts agileits">
                <h2>登录</h2>
                <div class="send-button w3layouts agileits">
                    <form action="s1" method="post">
                        <input type="text" Name="Username" placeholder="用户名" required="">
                        <input type="password" Name="Password" placeholder="密码" required="">
                        <input type="submit" value="提交">
                    </form>

                </div>

                <div class="clear"></div>
            </div>


            <div class="register w3layouts agileits">
                <h2>注册</h2>
                <form action="s2" method="post">
                    <input type="text" Name="Username" placeholder="用户名" required="">
                    <input type="password" Name="Password" placeholder="密码" required="">
                    <div class="send-button w3layouts agileits">
                        <input type="submit" value="提交">
                    </div>
                </form>

                <div class="clear"></div>
            </div>

            <div class="clear"></div>

        </div>

        <div class="footer w3layouts agileits">
            <p>Copyright &copy; Rui Tan</p>
        </div>
    </div>
</body>
<!-- //Body -->

</html>