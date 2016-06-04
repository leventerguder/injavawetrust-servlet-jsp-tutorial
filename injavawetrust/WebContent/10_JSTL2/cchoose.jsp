<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<c:set var="salary" scope="session" value="15000"/>

<p>Your salary is : <c:out value="${salary}"/></p>

<c:choose>
    <c:when test="${salary <= 2000}">
       Low Salary
    </c:when>
    
    <c:when test="${salary < 10000}">
        Salary is very good.
    </c:when>
    <c:otherwise>
        Excellent salary!
    </c:otherwise>
</c:choose>


</body>
</html>