<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<form action="Lab2_2_result.jsp" method="post">
			아이디 <input type="text" name="id" required="required">  <!--필수 -->
			비밀번호 <input type="text" name="pw" required="required"> <!--필수 -->
			<input type="submit" value="로그인">
		</form>
	</div>
</body>
</html>