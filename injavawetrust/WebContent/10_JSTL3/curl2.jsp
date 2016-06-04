<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<c:set var="firstName" value="Levent" />	
	<c:set var="lastName" value="Erguder" />

	<a href='<c:url value="encodeMe2.jsp?name=${firstName}&surname=${lastName}" />'>Click here</a>
	
	<a href='
	<c:url value="encodeMe2.jsp"> 
		<c:param name="firstName" value="Levent"></c:param>
		<c:param name="lastName" value="Erguder"></c:param>
	</c:url> '> Click here</a>

	
</body>
</html>