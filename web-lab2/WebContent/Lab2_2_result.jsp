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
<title>�α���</title>
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
        	// �� �� ��������
	    %>
	     <script>
                alert('�α��� ����');
                history.go(-1);     // ���� ������
            </script>
            <%
	    }
	    session.setAttribute("id", id);
        time = session.getLastAccessedTime();
        d.setTime(time); 
        %>
        <div class="container">
			<%=request.getParameter("id")%>���� �α����ϼ̽��ϴ�.
			<form action="./logout.jsp" method="POST">
             <input type="submit" value="�α׾ƿ�"><br>
            </form>

			
			<label for = "season"> *�����ϴ� ������?  </label>
			<form action="./includeResult.jsp" method="POST">
        <input type = "radio" name = "season" value = "spring">��
        <input type = "radio" name = "season" value = "summer">����
        <input type = "radio" name = "season" value = "autumn">����
        <input type = "radio" name = "season" value = "winter">�ܿ�
        <input type = "submit" value ="�������">
=======
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
>>>>>>> ff2ccf2b4e1855c5b8ff0af401ff60a02859ccb8
		</form>
		<p>
			������ ���ӽð�:
			<%=f.format(d) %></p>
	</div>
</body>
</html>