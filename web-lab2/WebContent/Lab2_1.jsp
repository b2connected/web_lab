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
	<%@ include file="./header.jsp"%>
	<div class="container">
		<form action="Lab2_1_result.jsp" method="post" onsubmit="return check_before_submit()">
			 �̸�: <input type="text" name="name"><br> 
			 �й�: <input type="text" name="std_num"> <br>
			while�� <input type="radio" value="_while" name="gram">
			for�� <input type="radio" value="_for" name="gram"> <br>
			�Է�Ƚ�� <input type="text" name="input_num"> <br> 
			�Է� ���� <input type="text" name="input_str"> <br> 
			<input type="submit" value="������">
		</form>
	</div>
</body>
<script>
</script>
</html>