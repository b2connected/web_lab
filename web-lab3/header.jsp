<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%if(session.getAttribute("id")==null){ %>
<!-- 로그인 값 보내기 -->
<form action="login_ok.jsp" method="post">
	아이디<input type="text" name="id"> 
	비밀번호<input type="password" name="pwd"> 
	<input type="submit" value="로그인"> 
	<a href="./main.jsp?pagefile=join"><input type="button" value="회원가입"> </a>
</form>
<% } else {
%>
<!-- 로그아웃으로 -->
<form action="logout.jsp" method="post" >
<%= session.getAttribute("id") %>님 로그인하셨습니다. 
<input type="submit" value="로그아웃">
</form>
<%}%>

