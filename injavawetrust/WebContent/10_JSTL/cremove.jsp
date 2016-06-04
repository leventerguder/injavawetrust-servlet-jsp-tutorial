<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<c:set var="myattribute" scope="request"
		value="request scope attribute"></c:set>
	<c:set var="myattribute" scope="page" value="page scope attribute"></c:set>
	<c:set var="myattribute" scope="session"
		value="session scope attribute"></c:set>
	<c:set var="myattribute" scope="application"
		value="application scope attribute"></c:set>

	<c:out value="${myattribute}"></c:out>
	<br>
	<c:out value="${pageScope.myattribute}"></c:out>
	<br>
	<c:out value="${requestScope.myattribute}"></c:out>
	<br>
	<c:out value="${sessionScope.myattribute}"></c:out>
	<br>
	<c:out value="${applicationScope.myattribute}"></c:out>

	
	<!-- scope belirtilmediginde tum scope alanlarindan ilgili attribute'leri siler. -->
	<c:remove var="myattribute"/>
	
	<p>myattribute is removed</p>
	
	<c:out value="${myattribute}"></c:out>
	<br>
	<c:out value="${pageScope.myattribute}"></c:out>
	<br>
	<c:out value="${requestScope.myattribute}"></c:out>
	<br>
	<c:out value="${sessionScope.myattribute}"></c:out>
	<br>
	<c:out value="${applicationScope.myattribute}"></c:out>
	
</body>
</html>