<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<style>
.log {
	display: flex;
}
</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    long time;
	    %>
	<%
	    	if(id == null || pw == null) {
	    		%>
	<script>
		alert('�α��� ����'); 
		history.go(-1); // ���� ������ 
		</script>

	<%
	    		
	    	}
			
			session.setAttribute("id", id);
			time = session.getLastAccessedTime();
			d.setTime(time);
			%>
	<div class="container">
		<div class="log">
			<%= id %>���� �α����ϼ̽��ϴ�.
			<form action="./logout.jsp" method="POST">
				<button>�α׾ƿ�</button>
			</form>
		</div>
		<br>
		<form action="./includeResult.jsp" method="POST">
			<label for="season"> *�����ϴ� ������? </label> <br> <input
				type="radio" name="season" value="��">�� <input type="radio"
				name="season" value="����">���� <input type="radio"
				name="season" value="����">���� <input type="radio"
				name="season" value="�ܿ�">�ܿ� <input type="submit"
				value="�������">
		</form>
		<p>
			������ ���ӽð�:
			<%=f.format(d) %></p>
	</div>
</body>
</html>