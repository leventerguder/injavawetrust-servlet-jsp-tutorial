<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	<%
		RequestDispatcher rd = request.getRequestDispatcher("handleIt3.jsp");
		rd.forward(request, response);
	%>

</body>
</html>