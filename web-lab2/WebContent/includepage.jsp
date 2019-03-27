<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
    	request.setCharacterEncoding("EUC-KR");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		String season = request.getParameter("season");  //파라미터들 가져옴
		String id = (String)session.getAttribute("id");
	%>
	<%=id %>님이 좋아하는 계절은
	<%=season %>입니다.
</body>
</html>