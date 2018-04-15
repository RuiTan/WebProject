package com.tanrui.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import com.tanrui.bean.*;


public class lessons_page_1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("success", true);
        try {
            ArrayList<get_lessons> lessons_list_default = connect_to_db_get_lessons.ctb_get_lessons("select * from lessons");
            session.setAttribute("lessons_list_default", lessons_list_default);
            response.sendRedirect("course_research.jsp?page=1");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
