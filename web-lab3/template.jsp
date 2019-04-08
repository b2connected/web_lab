<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String pagefile=request.getParameter("pagefile");
%>

<style>
#container {
	width: 940px;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #bcbcbc;
}

#header {
	padding: 20px;
	margin-bottom: 5px;
	width: 900px;
	height: 10px;
	border: 1px solid #bcbcbc;
	float: right;
	text-align: right;
	
}

#headermenu {
	padding: 20px;
	margin-bottom: 5px;
	width: 900px;
	height: 50px;
	float: left;
	border: 1px solid #bcbcbc;
}

#content {
	width: 900px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}

#footer {
	clear: both;
	padding: 20px;
	border: 1px solid #bcbcbc;
}
table, th, td {
  border: 1px solid black;
}
</style>

<div id="container">
		<!-- header 시작  -->
		<div id="header">
			<jsp:include page="header.jsp"/>
			
		</div>
		<div id="headermenu">
			<jsp:include page="menu.jsp"/>
		</div>

		<!-- header 끝  -->
		<!--  content 시작  -->
		<div id="content">
		<!-- pagefile명에 따른 이동 -->
			<jsp:include page='<%=pagefile+".jsp"%>'  flush="false"/>

		</div>
		<!--  content 끝  -->

		<!--  footer 시작   -->
		<div id="footer">
			<jsp:include page ="footer.jsp"/>
		</div>
		<!--  footer 끝  -->

	</div>
