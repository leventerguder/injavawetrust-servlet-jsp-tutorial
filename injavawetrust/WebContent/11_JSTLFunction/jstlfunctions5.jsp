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

	<p>${fn:substring(myattribute, 2, 6)}</p>
	
	<p>${fn:substringAfter(myattribute,'java')}</p>
	
	<p>${fn:substringBefore(myattribute,'java')} </p>
	
</body>
</html>