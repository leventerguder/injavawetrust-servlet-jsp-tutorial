<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="_10_UseBean.model.Person"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestImplicit.jsp</title>
</head>
<body>

	<%
		Person person = (Person) request.getAttribute("myperson");
	%>

	<%=person.getName()%>
	<%=person.getSurname()%>
	<%=person.getYear()%>

</body>
</html>