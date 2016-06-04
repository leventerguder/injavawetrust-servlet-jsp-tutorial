<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		String encodedUrl = response.encodeURL("encodeMe.jsp");
	%>

	<a href="<%=encodedUrl%>">Click Me!</a>

	<%-- 
		
	<c:url> otomatik olarak URL rewriting islemi yapacaktir.
	Eger cookie kapali olursa JSESSIONID url sonuna eklenecektir. -->
	
	--%>

	<a href='<c:url value="encodeMe.jsp" />'>Click here</a>

	<%--Eger encodeURL metodu ya da <c:url> JSTL etiketi kullanilmazsa 
	cookie kapaliysa bu durumda JSESSIONID url sonuna eklenmez.. --%>
	
	<a href='encodeMe.jsp'>Click here</a>

</body>
</html>