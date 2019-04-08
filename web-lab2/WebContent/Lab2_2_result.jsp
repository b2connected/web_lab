<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.text.SimpleDateFormat"%>
    <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
	
		<%String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    long time;
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
		</form>
	</div>
</body>
</html>