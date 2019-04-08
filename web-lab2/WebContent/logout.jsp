<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	request.setCharacterEncoding("EUC-KR");
    %>
    <%
    	session.invalidate(); // 세션 삭제
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃</title>
</head>
<body>
	<script>
		window.location.href='./Lab2_2.jsp'  //로그아웃 하고 다시 Lab2_2로 
	</script>
</body>
</html>