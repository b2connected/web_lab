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
	String season = request.getParameter("season");
	pageContext.include("./includepage.jsp?season=" + season);   // �Ķ���� �߰� ("./---?������=������");
%>
</body>
</html>