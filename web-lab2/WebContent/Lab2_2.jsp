<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<form action="Lab2_2_result.jsp" method="post">
			���̵� <input type="text" name="id" required="required">  <!--�ʼ� -->
			��й�ȣ <input type="text" name="pw" required="required"> <!--�ʼ� -->
			<input type="submit" value="�α���">
		</form>
	</div>
</body>
</html>