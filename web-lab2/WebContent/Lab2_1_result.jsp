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
   <!-- ���� ��ư ���� ���� �� -->
	<% if(request.getParameter("gram")==(null)) {%> 
	<span>���� ��ư�� �������� �ʾҽ��ϴ�.</span>
	<%
	}else {   // ���� ���� �� �ƴ� ��
		%>
	�̸�:<%=request.getParameter("name")%><br> �й�:<%=request.getParameter("std_num")%><br>
	<%
	if(request.getParameter("gram").equals("_while")) {
		%>while�� ����!
	<%
	}else if(request.getParameter("gram").equals("_for")){
		%>for�� ����!<%
	} %>
	<br>
	<% input_num = Integer.parseInt(request.getParameter("input_num")); // ����ڰ� �ۼ��� �Է�Ƚ�� ��������
	   input_str = request.getParameter("input_str"); // ����ڰ� �ۼ��� �Է±��� ��������
	   
for(int i = 0; i < input_num; i++) {  // ����ڰ� �ۼ��� �Է�Ƚ����ŭ �ݺ�
	out.println(input_str); %><br>
	<%
}
	}
%>


</body>
</html>

