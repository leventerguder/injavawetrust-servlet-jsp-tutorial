<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		Integer num1 = 10;
		Integer num2 = 15;
		Integer num3 = 20;
		Integer num4 = 25;
		Integer num5 = 30;

		pageContext.setAttribute("num1", num1);
		pageContext.setAttribute("num2", num2, PageContext.SESSION_SCOPE);
		pageContext.setAttribute("num3", num3, PageContext.APPLICATION_SCOPE);

		session.setAttribute("num4", num4);
		request.setAttribute("num5", num5);

		System.out.println("attribute1.jsp");
		System.out.println("Page Scope:" + pageContext.getAttribute("num1"));
		System.out.println("Session Scope:" + pageContext.getAttribute("num2", PageContext.SESSION_SCOPE));
		System.out.println("Session Scope - session:" + session.getAttribute("num2"));
		System.out.println("Application Scope:" + pageContext.getAttribute("num3", PageContext.APPLICATION_SCOPE));
		System.out.println("Application Scope - application:" + application.getAttribute("num3"));
		System.out.println("Session Scope :" + session.getAttribute("num4"));
		System.out.println("Request Scope :" + request.getAttribute("num5"));
		System.out.println("Find Attribute:" + pageContext.findAttribute("num2"));
	%>

</body>
</html>