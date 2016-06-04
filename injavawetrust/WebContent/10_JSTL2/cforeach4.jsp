<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		java.util.Map<String, String> myMap = new java.util.HashMap<String, String>();
		myMap.put("key1", "value1");
		myMap.put("key2", "value2");
		myMap.put("key3", "value3");

		request.setAttribute("myMapAttribute", myMap);
	%>

	<c:forEach var="entry" items="${myMapAttribute}">
		<c:out value="${entry.key}" />
		<c:out value="${entry.value}" />
	</c:forEach>


</body>
</html>