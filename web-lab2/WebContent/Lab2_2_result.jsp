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
	<div class="container">
		<form action="Lab2_2.jsp" method="post">
		<%String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String redirectUrl = "Lab2_2.jsp"; // ���� ���н� ���û �� url 
	    %>
	    
			<%=request.getParameter("id")%>���� �α����ϼ̽��ϴ�.
			<% 
			 session.setAttribute("signedUser", id); // �����Ǿ��� ���ǿ� ����
			 redirectUrl = "Lab2_2_result.jsp"; // ���� ���� �� ���û url
			 %>
			<input type="submit" value="�α׾ƿ�"><br>
			
			<label for = "season"> *�����ϴ� ������?  </label>
        <input type = "radio" name = "season" value = "spring">��
        <input type = "radio" name = "season" value = "summer">����
        <input type = "radio" name = "season" value = "autumn">����
        <input type = "radio" name = "season" value = "winter">�ܿ�
        <input type = "submit" value ="����">

		</form>
	</div>
</body>
</html>