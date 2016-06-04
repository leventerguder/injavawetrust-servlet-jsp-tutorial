<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<!-- scope zorunlu degildir varsayilan olarak page scope kullanilir. -->
	
	<c:set var="mySessionAttribute" scope="session" value="my session value"/>
	
	<c:set var="myRequestAttribute" scope="request">my request value </c:set>
	
	<c:out value="${mySessionAttribute} "/>
	<br>
	<c:out value="${myRequestAttribute} "/>
	
</body>
</html>