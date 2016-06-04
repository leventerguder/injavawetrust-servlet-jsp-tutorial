<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>

	<%
		String myURL = "compileError.html";
	%>

	<!--  derleme hatasi verir! static inclusion da expression ifadesi file attribute'te kullanilamaz.
	<%@ include file="<%=myURL%>" %>
	 -->

</body>
</html>