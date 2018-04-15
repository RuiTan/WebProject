package com.tanrui.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "pre_page")
public class pre_page extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page_num = Integer.parseInt(request.getParameter("page"));
        if (page_num == 1){
            response.getWriter().print("<script language=\"JavaScript\">alert(\"已到达第一页！\");</script>");
            response.sendRedirect("course_research.jsp?page=" + page_num);
        } else {
            response.sendRedirect("course_research.jsp?page=" + (page_num-1));
        }
    }
}
