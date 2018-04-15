package com.tanrui.servlet;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class login_validate extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        try {
            // 反射引用驱动器
            Class.forName("com.mysql.jdbc.Driver");
            // 获取数据库连接
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            // 查询语句
            String sql = "select * from users";
            // 创建查询
            Statement statement = connection.createStatement();
            // 获取结果
            ResultSet resultSet = statement.executeQuery(sql);
            PrintWriter printWriter = response.getWriter();
            Boolean existed = false;
            HttpSession session = request.getSession();
            while (resultSet.next()){
                if (resultSet.getString(1).equals(username)){
                    existed = true;
                    if (resultSet.getString(2).equals(password)){
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        session.setAttribute("login_success", 1);
                        response.sendRedirect("index.jsp");
                    }else {
                        session.setAttribute("login_success", 0);
                        response.sendRedirect("login_index.jsp");
                    }
                }
            }
            if (!existed){
                session.setAttribute("login_success", -1);
                response.sendRedirect("login_index.jsp");
            }
            printWriter.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);

    }
}
