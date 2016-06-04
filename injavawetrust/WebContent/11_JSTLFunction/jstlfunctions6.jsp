<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>


	<c:set var="myattribute" value="This is first String." />
	<p>${fn:replace(myattribute, 'first', 'second')}"</p>


	<c:set var="string1" value="    there are whitespaces     " />
	<p>String (1) Length : ${fn:length(string1)}</p>

	<c:set var="string2" value="${fn:trim(string1)}" />
	<p>String (2) Length : ${fn:length(string2)}</p>


</body>
</html>