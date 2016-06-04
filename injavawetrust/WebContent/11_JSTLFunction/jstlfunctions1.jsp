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

	<c:if test="${fn:contains(myattribute, 'java')}">
		<p>Founded! java</p>
	</c:if>


	<c:if test="${fn:containsIgnoreCase(myattribute, 'JAVA')}">
		<p>Founded! JAVA</p>
	</c:if>

</body>
</html>