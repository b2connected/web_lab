<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.Timestamp" %> <!-- 시간사용 -->
        <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<jsp:useBean id="resultInfo" class="info.resultInfo">
	<jsp:setProperty name="resultInfo" property="*"/> <!-- 모든 property가져오기 -->
</jsp:useBean>
<% //현재 날짜와 시간을 가입일로 지정
resultInfo.setdate(new Timestamp(System.currentTimeMillis()));%>   <!-- 시간사용 -->

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>주문 결과</h1>
<hr>
<table class="content">
<tr>
<td>주문번호
<td><jsp:getProperty name="resultInfo" property="count"/>
<tr>
<td>커피:
<td><jsp:getProperty name="resultInfo" property="type"/>
<tr>
<td>옵션:
<td><jsp:getProperty name="resultInfo" property="option"/>
<tr>
<td>사이즈:
<td><jsp:getProperty name="resultInfo" property="size"/>
<tr>
<td>주문시간
<td><jsp:getProperty name="resultInfo" property="date"/>
</table>
</body>
</html>