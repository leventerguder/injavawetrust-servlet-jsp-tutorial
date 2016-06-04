<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person1" class="_10_UseBean.model.Person">
		<jsp:setProperty name="person1" property="name" />
		<jsp:setProperty name="person1" property="surname" />
		<jsp:setProperty name="person1" property="year" />
	</jsp:useBean>

	<jsp:getProperty property="name" name="person1" />
	<jsp:getProperty property="surname" name="person1" />
	<jsp:getProperty property="year" name="person1" />

</body>
</html>