<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestImplicit.jsp</title>
</head>
<body>


	<%--
	UseBeanType.java sinifimizda abstractperson isminde bir request attribute request scope'a ekledik.
	Employee IS-A AbstractPerson
	
	AbstractPerson person1 = new Employee(100, "levent", "erguder", 1989);	
		req.setAttribute("abstractperson", person1);
	
	 --%>

	<jsp:useBean id="abstractperson"
		type="_10_UseBean.model.AbstractPerson" scope="request">
	</jsp:useBean>

	<jsp:getProperty property="name" name="abstractperson" />
	<jsp:getProperty property="surname" name="abstractperson" />
	<jsp:getProperty property="year" name="abstractperson" />


</body>
</html>

