<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<fmt:setBundle basename="myapp" var="lang"/>
<%-- <fmt:setLocale value="en" scope="session" />

--%>

<fmt:setLocale value="fr" scope="session" />

<fmt:message key="Name" bundle="${lang}"/>

<fmt:message key="Address" bundle="${lang}"/>

<fmt:message key="Number" bundle="${lang}"/>
	
</body>
</html>