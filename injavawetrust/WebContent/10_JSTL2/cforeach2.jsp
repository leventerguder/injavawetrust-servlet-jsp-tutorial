<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

    <%
        int[] numbers = { 5, 10, 15, 20, 25, 30 };
        request.setAttribute("numbersAttribute", numbers);
    %>

    <c:forEach var="number" items="${numbersAttribute}">
        <c:out value="${number}" />
    </c:forEach>
	
	<br>
	
	<c:forEach var="number" items="${numbersAttribute}" varStatus="loopTagStatus">
       index:<c:out value="${loopTagStatus.index}" />  
       <c:out value="${number}" /> <br>
    </c:forEach>
	

</body>
</html>