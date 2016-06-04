<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<c:forEach var="x" begin="1" end="5">
	   <c:out value="${x}"/> 
	</c:forEach>
	
	<br>
	
	<c:forEach var="x" begin="5" end="15" step="5">
	   <c:out value="${x}"/>
	</c:forEach>


</body>
</html>