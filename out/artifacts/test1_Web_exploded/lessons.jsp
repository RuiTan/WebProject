<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String []words = {"amani","abc","apple","abstract","an","bike","byebye",
            "beat","be","bing","come","cup","class","calendar","china"};
    if(request.getParameter("search-text") != null) {
        String key = request.getParameter("search-text");
        if(key.length() != 0){
            StringBuilder json= new StringBuilder("[");
            for (String word : words) {
                if (word.startsWith(key)) {
                    json.append("\"").append(word).append("\"").append(",");
                }
            }
            json = new StringBuilder(json.substring(0, json.length() - 1 > 0 ? json.length() - 1 : 1));
            json.append("]");
            System.out.println("json:" + json);
            out.println(json.toString());
        }
    }
%>