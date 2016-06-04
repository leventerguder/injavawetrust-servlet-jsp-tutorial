<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		String[] myArray = { "test1", "test2", "test3" };
		request.setAttribute("myArray", myArray);

		String splitIt = "split1,split2,split3";
		request.setAttribute("splitIt", splitIt);
	%>

	<p>${fn:join(myArray, ';')}</p>

	
	<c:forEach var="x" items="${fn:split(splitIt, ',')}">
		<c:out value="${x}"></c:out>
	</c:forEach>


</body>
</html>