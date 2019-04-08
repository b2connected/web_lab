<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<!-- id 확인 후 main으로 -->
<% String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

session.setAttribute("id",id);
response.sendRedirect("main.jsp");
%>