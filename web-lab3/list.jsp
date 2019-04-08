<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>


	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	
<head>
<script type="text/javascript">
	function GetCheckedCheckboxesFor(){ // 체크 박스 널일 때 조건
		
		var checkboxes = document.querySelectorAll('input[name=sub]:checked'), values=[];
		Array.prototype.forEach.call(checkboxes, function(el){
			values.push(el.value);
		});
		if(values.length == 0){ // 길이가 0이면
			alert('하나 이상은 수강과목을 체크해 주세요. ');
			return false;
		}
		return true;
	}
</script>
</head>
<%if(session.getAttribute("id")==null){ //로그인 전 %> 
<h1>개설강좌</h1>
<table style="width: 100%">
	<tr>
		<th>강좌코드</th>
		<th>과목명</th>
		<th>학년</th>
		<th>학점</th>
	</tr>
	<tr>
		<td>IC015-A</td>
		<td>웹 시스템 설계 및 개발</td>
		<td>3</td>
		<td>3</td>
	</tr>
	<tr>
		<td>IC147-A</td>
		<td>자바기반응용프로그래밍</td>
		<td>2</td>
		<td>3</td>
	</tr>
	<tr>
		<td>IC136-A</td>
		<td>컴퓨터프로그래밍기초</td>
		<td>1</td>
		<td>3</td>
	</tr>
	<tr>
		<td>IC066-A</td>
		<td>운영체제</td>
		<td>3</td>
		<td>3</td>
	</tr>
</table>
<% }else { // 로그인 후
%>
	<h1>수강신청하기</h1>
	
	<form action="./main.jsp?pagefile=apply" method="POST">
	
<table style="width: 100%">
	<tr>
		<th>강좌코드</th>
		<th>과목명</th>
		<th>학년</th>
		<th>학점</th>
		<th>선택</th>
	</tr>
	<tr>
		<td>IC015-A</td>
		<td>웹 시스템 설계 및 개발</td>
		<td>3</td>
		<td>3</td>
		<td><input type="checkbox" value="웹 시스템 설계 및 개발,3,3" name="sub"></td>
	</tr>
	<tr>
		<td>IC147-A</td>
		<td>자바기반응용프로그래밍</td>
		<td>2</td>
		<td>3</td>
		<td><input type="checkbox" value="자바기반응용프로그래밍,2,3" name="sub"></td>
	</tr>
	<tr>
		<td>IC136-A</td>
		<td>컴퓨터프로그래밍기초</td>
		<td>1</td>
		<td>3</td>
		<td><input type="checkbox" value="컴퓨터프로그래밍기초,1,3" name="sub"></td>
	</tr>
	<tr>
		<td>IC066-A</td>
		<td>운영체제</td>
		<td>3</td>
		<td>3</td>
		<td><input type="checkbox" value="운영체제,3,3" name="sub"></td>
	</tr>
</table>


<p align="right"><input type="submit" onclick='return GetCheckedCheckboxesFor();' value="수강신청" /></p>
	</form>

<%}%>

