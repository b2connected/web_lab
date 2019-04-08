<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<!-- 세션 제거 -->
<%
session.invalidate();
response.sendRedirect("main.jsp");
%>