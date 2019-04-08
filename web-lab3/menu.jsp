<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<a href="./main.jsp">홈</a>
<%if(session.getAttribute("id")==null){ %>
<a href="./main.jsp?pagefile=list"> 개설강좌 </a>
	<% }else { //세션이 설정되지 않은 경우%> 
	<a href="./main.jsp?pagefile=list"> 수강신청 </a>
	<%}%>
