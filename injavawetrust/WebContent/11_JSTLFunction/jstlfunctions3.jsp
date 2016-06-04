<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>


	<c:set var="myattribute" value="TO LOWER CASE TEST" />
	
	<p>	${fn:toLowerCase(myattribute)} </p>
	
	<c:set var="myattribute2" value="to upper case test" />
	
	<p>	${fn:toUpperCase(myattribute2)} </p>
	
</body>
</html>