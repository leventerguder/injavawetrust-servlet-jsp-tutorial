<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<c:catch var ="catchException">
   <% int x = 10/0;%>
</c:catch>

<c:if test = "${catchException != null}">
   <p>The exception is : ${catchException} <br />
   There is an exception: ${catchException.message}</p>
</c:if>

	
</body>
</html>