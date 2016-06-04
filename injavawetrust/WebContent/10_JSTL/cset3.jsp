<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="_13_JSTL.model.Person"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		Person person = new Person();	
		request.setAttribute("myperson", person);
	%>

	<c:set target="${myperson}" property="name" value="Levent"></c:set>
	<c:set target="${myperson}" property="surname" value="Erguder"></c:set>
	<c:set target="${myperson}" property="year" value="2015"></c:set>
		
	<c:out value="${myperson.name}"></c:out>
	<c:out value="${myperson.surname}"></c:out>
	<c:out value="${myperson.year}"></c:out>

	<!-- target alani null olmamalidir! Bu durumda calisma zamaninda exception firlatir. -->
	
	<%--
	<c:set target="${thisIsNull}" property="thereIsNoPropery" value="javax.servlet.jsp.JspTagException"></c:set>
	 --%>
	 
	 <!--target null olmasa da eger property yoksa yine calisma zamaninda exception firlatilir. -->
	 
	 <%--
	 <c:set target="${myperson}" property="thereIsNoPropery" value="javax.servlet.jsp.JspTagException"></c:set>
	  --%>
</body>
</html>