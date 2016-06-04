<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<c:set var="myattribute" value="injavawetrust" />

	<c:if test="${fn:startsWith(myattribute, 'in')}">
		<p>String starts with in</p>
	</c:if>

	<c:if test="${fn:endsWith(myattribute, 'trust')}">
		<p>String ends with trust</p>
	</c:if>


</body>
</html>