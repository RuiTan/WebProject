package com.tanrui.servlet;

import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class login_validate extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            String sql = "select * from users";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            PrintWriter printWriter = response.getWriter();
            Boolean existed = false;
            while (resultSet.next()){
                if (resultSet.getString(1).equals(username)){
                    existed = true;
                    if (resultSet.getString(2).equals(password)){
//                        String redirect = "index.jsp?username=" + username + "&password=" + password;
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        response.sendRedirect("index.jsp");
                    }else {
                        JOptionPane.showMessageDialog(null, "密码错误，请重新输入");
                        response.sendRedirect("login_index.jsp");

                    }
                }
            }
            if (!existed){
                JOptionPane.showMessageDialog(null, "用户不存在，请注册或重新输入用户名");
                response.sendRedirect("login_index.jsp");
            }
            printWriter.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {


    }
}
