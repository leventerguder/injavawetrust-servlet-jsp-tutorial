<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Map , java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		Map myMap = new HashMap();
		request.setAttribute("myMapAttribute", myMap);
	%>

	<c:set target="${myMapAttribute}" property="key1" value="value1" />
	<c:set target="${myMapAttribute}" property="key2">value2</c:set>

	<c:out value="${myMapAttribute.key1}"></c:out>
	<c:out value="${myMapAttribute['key2']}"></c:out>
	
	<!-- target alani null olmamalidir ! yoksa calisma zamaninda exception firlatir. -->
	<%--
	<c:set target="${thereIsNoMap}" property="exception" value="javax.servlet.jsp.JspTagException" />
	 --%>

</body>
</html>