<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.Timestamp" %> <!-- �ð���� -->
        <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<jsp:useBean id="resultInfo" class="info.resultInfo">
	<jsp:setProperty name="resultInfo" property="*"/> <!-- ��� property�������� -->
</jsp:useBean>
<% //���� ��¥�� �ð��� �����Ϸ� ����
resultInfo.setdate(new Timestamp(System.currentTimeMillis()));%>   <!-- �ð���� -->

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�ֹ� ���</h1>
<hr>
<table class="content">
<tr>
<td>�ֹ���ȣ
<td><jsp:getProperty name="resultInfo" property="count"/>
<tr>
<td>Ŀ��:
<td><jsp:getProperty name="resultInfo" property="type"/>
<tr>
<td>�ɼ�:
<td><jsp:getProperty name="resultInfo" property="option"/>
<tr>
<td>������:
<td><jsp:getProperty name="resultInfo" property="size"/>
<tr>
<td>�ֹ��ð�
<td><jsp:getProperty name="resultInfo" property="date"/>
</table>
</body>
</html>