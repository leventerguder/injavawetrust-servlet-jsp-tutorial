<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<c:set var="string1" value="This <b>is second String.</b>" />

	<p>With escapeXml() Function:</p>

	<p>string (1) : ${fn:escapeXml(string1)}</p>

	<p>Without escapeXml() Function:</p>

	<p>string (1) : ${string1}</p>


</body>
</html>