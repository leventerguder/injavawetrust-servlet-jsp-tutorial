<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>


	<c:set var="myattribute" value="This is test String." />

	<p>Index: ${fn:indexOf(myattribute, "test")}</p>
	<p>Length of String  : ${fn:length(myattribute)}</p>


</body>
</html>