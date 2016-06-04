<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		java.util.List<String> myList = new java.util.ArrayList<String>();
		myList.add("element1");
		myList.add("element2");
		myList.add("element3");

		request.setAttribute("myListAttribute", myList);
	%>

	<c:forEach var="element" items="${myListAttribute}">
		<c:out value="${element}" />
	</c:forEach>


</body>
</html>