<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<!-- 수강신청  -->

<!DOCTYPE html>
<h1>수강신청하기</h1>
<table style="width: 40%">
	<tr>
		<th>번호</th>
		<th>선택한 과목</th>
		<th>학점</th>
		<th>학년</th>
	</tr>
	<%
				int totalScore= 0 ; // 총 학점
     String[] subjects = request.getParameterValues("sub");
    if(subjects != null){ //과목이 있으면
    	for(int i = 0 ; i < subjects.length ; i ++){ // 과목의 길이만큼
    		String[] array = subjects[i].split(","); //, 를 기준으로 split
    		totalScore = totalScore + Integer.parseInt(array[2]);
    		// 두번째방에 있는 애가 학점임
    		%>
	<tr>
		<th><%=i+1 %></th>
		<th><%=array[0]%></th>
		<th><%=array[2] %></th>
		<th><%=array[1] %></th>
	</tr>
	<% 
    		
    	}
    }
    %>

	<tr>
		<th colspan="3" align="center">총 학점</th>
		<th align="center" style="color: red;"><%=totalScore %></th>
	</tr>

</table>
<a href="./main.jsp?pagefile=result"> <input type="submit"
	value="신청">
</a>