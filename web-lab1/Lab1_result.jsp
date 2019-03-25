<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="container">
<h1>201704020 이어진</h1>
<h2>주문완료</h2>
<h3>
<%!
int price;
%>
<%
price = Integer.parseInt(request.getParameter("count")) * 5000; 
%>
   이름: 
   <%=request.getParameter("name") %> <br>
   전화번호: 
   <%=request.getParameter("tel") %> <br>
   size: 
   <%=request.getParameter("size") %> <br>
   수량: 
   <%=request.getParameter("count") %> <br>
   </h3>
   <hr>
   <p style="text-align: left">금액:    
   <%=price %> 원<br></p>

</div> 
</body>
</html>