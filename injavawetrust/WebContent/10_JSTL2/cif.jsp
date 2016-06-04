<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<c:set var="result" scope="request" value="70"/>

<c:if test="${result > 50}">
   <p>You pass exam ! : <c:out value="${result}"/><p>
</c:if>


<c:set var="result2" scope="request" value="40"/>

<c:if test="${result2 lt 50}">
   <p>You failed ! ! : <c:out value="${result2}"/><p>
</c:if>

<c:set var="myName" scope="request" value="Levent"/>

<c:if test="${myName eq 'Levent'}">
   <p>Hello(eq) , ${myName}<p>
</c:if>

<c:if test="${myName =='Levent'}">
   <p>Hello(==) , ${myName}<p>
</c:if>

</body>
</html>