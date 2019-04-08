<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
<<<<<<< HEAD
    pageEncoding="EUC-KR"%>
    <%@ page import="java.text.SimpleDateFormat"%>
    <% request.setCharacterEncoding("EUC-KR");%>
=======
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<% request.setCharacterEncoding("EUC-KR");%>
>>>>>>> ff2ccf2b4e1855c5b8ff0af401ff60a02859ccb8
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<style>
.log {
	display: flex;
}
</style>
</head>
<body>
<<<<<<< HEAD
	
		<%String id = request.getParameter("id");
=======

	<%
		String id = request.getParameter("id");
>>>>>>> ff2ccf2b4e1855c5b8ff0af401ff60a02859ccb8
	    String pw = request.getParameter("pw");
	    Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    long time;
<<<<<<< HEAD
	    %><%
	    if(id == null || pw == null) {
        	// 이 전 페이지로
	    %>
	     <script>
                alert('로그인 실패');
                history.go(-1);     // 이전 페이지
            </script>
            <%
	    }
	    session.setAttribute("id", id);
        time = session.getLastAccessedTime();
        d.setTime(time); 
        %>
        <div class="container">
			<%=request.getParameter("id")%>님이 로그인하셨습니다.
			<form action="./logout.jsp" method="POST">
             <input type="submit" value="로그아웃"><br>
            </form>

			
			<label for = "season"> *좋아하는 계절은?  </label>
			<form action="./includeResult.jsp" method="POST">
        <input type = "radio" name = "season" value = "spring">봄
        <input type = "radio" name = "season" value = "summer">여름
        <input type = "radio" name = "season" value = "autumn">가을
        <input type = "radio" name = "season" value = "winter">겨울
        <input type = "submit" value ="결과보기">
=======
	    %>
	<%
	    	if(id == null || pw == null) {
	    		%>
	<script>
		alert('로그인 실패'); 
		history.go(-1); // 이전 페이지 
		</script>

	<%
	    		
	    	}
			
			session.setAttribute("id", id);
			time = session.getLastAccessedTime();
			d.setTime(time);
			%>
	<div class="container">
		<div class="log">
			<%= id %>님이 로그인하셨습니다.
			<form action="./logout.jsp" method="POST">
				<button>로그아웃</button>
			</form>
		</div>
		<br>
		<form action="./includeResult.jsp" method="POST">
			<label for="season"> *좋아하는 계절은? </label> <br> <input
				type="radio" name="season" value="봄">봄 <input type="radio"
				name="season" value="여름">여름 <input type="radio"
				name="season" value="가을">가을 <input type="radio"
				name="season" value="겨울">겨울 <input type="submit"
				value="결과보기">
>>>>>>> ff2ccf2b4e1855c5b8ff0af401ff60a02859ccb8
		</form>
		<p>
			마지막 접속시간:
			<%=f.format(d) %></p>
	</div>
</body>
</html>