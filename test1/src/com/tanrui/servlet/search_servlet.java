package com.tanrui.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import com.tanrui.bean.get_lessons;

public class search_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ArrayList<get_lessons> lessons_list = new ArrayList<>();
        Boolean exist = false;
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String search = request.getParameter("search-text");
        response.getWriter().print("<html><head></head><body>" + search + "</body></html>");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://i5apdbuy.457.dnstoo.com:4017/tanrui","tanrui_f","tanrui106");
            String sql = "select * from lessons WHERE lessons_name LIKE '%" + search +"%'";
            ResultSet resultSet = connection.createStatement().executeQuery(sql);
            while (resultSet.next()){
                if (!exist) exist = true;
                lessons_list.add(new get_lessons(resultSet.getString(2), resultSet.getString(1)));
            }
            HttpSession session = request.getSession();
            session.setAttribute("exist", exist);
            session.setAttribute("lessons_list", lessons_list);
            response.sendRedirect("course_research.jsp?page=1");
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request, response);
    }
}
