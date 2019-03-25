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
	<div class="container">
		<form action="Lab2_2.jsp" method="post">
		<%String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String redirectUrl = "Lab2_2.jsp"; // 인증 실패시 재요청 될 url 
	    %>
	    
			<%=request.getParameter("id")%>님이 로그인하셨습니다.
			<% 
			 session.setAttribute("signedUser", id); // 인증되었음 세션에 남김
			 redirectUrl = "Lab2_2_result.jsp"; // 인증 성공 시 재요청 url
			 %>
			<input type="submit" value="로그아웃"><br>
			
			<label for = "season"> *좋아하는 계절은?  </label>
        <input type = "radio" name = "season" value = "spring">봄
        <input type = "radio" name = "season" value = "summer">여름
        <input type = "radio" name = "season" value = "autumn">가을
        <input type = "radio" name = "season" value = "winter">겨울
        <input type = "submit" value ="전송">

		</form>
	</div>
</body>
</html>