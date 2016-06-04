<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>


	<%
		String pageURL = "includeMe.jsp";
	%>
	
	<jsp:include page="<%=pageURL%>" />

</body>
</html>