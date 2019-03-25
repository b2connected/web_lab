<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<%!
	int input_num;
	String input_str;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>  
   <!-- 라디오 버튼 값이 널일 때 -->
	<% if(request.getParameter("gram")==(null)) {%> 
	<span>라디오 버튼을 선택하지 않았습니다.</span>
	<%
	}else {   // 라디오 값이 널 아닐 때
		%>
	이름:<%=request.getParameter("name")%><br> 학번:<%=request.getParameter("std_num")%><br>
	<%
	if(request.getParameter("gram").equals("_while")) {
		%>while문 선택!
	<%
	}else if(request.getParameter("gram").equals("_for")){
		%>for문 선택!<%
	} %>
	<br>
	<% input_num = Integer.parseInt(request.getParameter("input_num")); // 사용자가 작성한 입력횟수 가져오기
	   input_str = request.getParameter("input_str"); // 사용자가 작성한 입력글자 가져오기
	   
for(int i = 0; i < input_num; i++) {  // 사용자가 작성한 입력횟수만큼 반복
	out.println(input_str); %><br>
	<%
}
	}
%>


</body>
</html>

