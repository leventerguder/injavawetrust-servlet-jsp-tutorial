<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param1.jsp</title>
</head>
<body>

	<jsp:useBean id="person1" class="_10_UseBean.model.Person">
		<jsp:setProperty name="person1" property="name" param="firstName" />
		<jsp:setProperty name="person1" property="surname" param="lastName" />
		<jsp:setProperty name="person1" property="year" param="yearOfBirth" />
	</jsp:useBean>

	<jsp:getProperty property="name" name="person1" />
	<jsp:getProperty property="surname" name="person1" />
	<jsp:getProperty property="year" name="person1" />

</body>
</html>