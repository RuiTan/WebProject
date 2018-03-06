package com.tanrui.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "register_validate")
public class register_validate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            String sql = String.format("select * from users where username=\"%s\"", username);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            PrintWriter printWriter = response.getWriter();
            while (resultSet.next()){
                JOptionPane.showMessageDialog(null, "用户已存在，请直接登录或更改用户名注册");
                response.sendRedirect("login_index.jsp");
            }
            sql = "INSERT INTO users VALUES(?,?,'','','')";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            int result = preparedStatement.executeUpdate();
            if (result == 1){
                JOptionPane.showMessageDialog(null, "注册成功，请前往登录页面登录");
                response.sendRedirect("login_index.jsp");
            }
            printWriter.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
