<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>


	<c:forTokens items="value1 value2 value3 value4" delims=" " var="value">
		<c:out value="${value}" />
	</c:forTokens>

	<br>

	<c:forTokens items="value1,value2,value3,value4" delims="," var="value">
		<c:out value="${value}" />
	</c:forTokens>
	
	<br>
	
	<c:forTokens items="value1:value2;value3:value4" delims=", : ;" var="value">
		<c:out value="${value}" />
	</c:forTokens>

</body>
</html>