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
			 이름: <input type="text" name="name"><br> 
			 학번: <input type="text" name="std_num"> <br>
			while문 <input type="radio" value="_while" name="gram">
			for문 <input type="radio" value="_for" name="gram"> <br>
			입력횟수 <input type="text" name="input_num"> <br> 
			입력 글자 <input type="text" name="input_str"> <br> 
			<input type="submit" value="보내기">
		</form>
	</div>
</body>
<script>
</script>
</html>