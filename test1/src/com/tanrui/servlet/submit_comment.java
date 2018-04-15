package com.tanrui.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.TimeZone;

import com.tanrui.bean.get_comment;

@WebServlet(name = "submit_comment")
public class submit_comment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        get_comment comment = new get_comment();
        comment.setUsername((String) request.getSession().getAttribute("username"));
        comment.setLessons_num((String) request.getSession().getAttribute("lessons_num"));
        comment.setLessons_name((String) request.getSession().getAttribute("lessons_name"));
        comment.setComment(request.getParameter("comment"));
        comment.setDate(String.valueOf(Calendar.getInstance(TimeZone.getTimeZone("GMT+8")).getTime()));
        comment.setLevel(request.getParameter("rating"));
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            String sql = "insert into comments values(?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, comment.getComment());
            preparedStatement.setString(2, comment.getLessons_num());
            preparedStatement.setString(3, comment.getLessons_name());
            preparedStatement.setString(4, comment.getUsername());
            preparedStatement.setString(5, comment.getDate());
            preparedStatement.setFloat(6, Float.parseFloat(comment.getLevel()));
            preparedStatement.executeUpdate();
            response.sendRedirect("case-info.jsp?lessons_num=" + comment.getLessons_num());
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
