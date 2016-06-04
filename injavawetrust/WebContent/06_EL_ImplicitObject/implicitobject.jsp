<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>

<html>

<body>
		
	${employee.name } <br>
	${requestScope.employee.name } <br>
	${sessionScope.employee.name } <br>
	${requestScope["test.attribute"].name } <br>
	
	${str} <br> 
	${requestScope.str} <br>
	${sessionScope.str} <br>
	${applicationScope.str } <br>
	
	${cookie.userName.value }
	
	
</body>
</html>