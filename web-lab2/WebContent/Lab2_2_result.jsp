<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.text.SimpleDateFormat"%>
    <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	
		<%String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    Date d = new Date();
	    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    long time;
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
		</form>
	</div>
</body>
</html>