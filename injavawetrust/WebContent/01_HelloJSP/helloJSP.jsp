<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ page import="java.util.List,java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello JSP</title>
</head>
<body>

	<%
		System.out.println("Java Scriptlet arasinda Java kodumuzu yazabiliriz");
		for (int i = 0; i < 5; i++) {
			System.out.println("i:" + i);
			out.println("i:" + i);
		}

		List<String> testList = new ArrayList<String>();
		testList.add("levent");
	%>

<br>
	<%
		String name = "Levent";
		int age = 24;
		out.println(name);
		out.println(age);
	%>
<br>
	<%=name%>
	<%=age%>

<br>
<%=addNumber(5,5)%>

	<%!
	
	public int addNumber(int n1, int n2) {
		sum = n1 + n2;
		return sum;
	}
	private int sum = 0;
	
	%>

<br>
<%=addNumber(5,10)%>


<%--JSP yorum satiri --%>
<!-- HTML yorum satiri -->
</body>
</html>