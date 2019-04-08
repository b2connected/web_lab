<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%
String pagefile=request.getParameter("pagefile");
if(pagefile==null){
pagefile="intro";
} else if (pagefile=="join") {
	pagefile="join";
} else if (pagefile=="list") {
	pagefile="list";
} else if (pagefile=="apply") {
	pagefile="apply";
} else if (page=="result") {
	pagefile="result";
}
%>
<jsp:include page="template.jsp" flush="false">
	<jsp:param name="pagefile" value="<%=pagefile%>" />
</jsp:include>
