<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	<%--request JSP implicit objesi ile getHeader metodunu kullanabiliriz. --%>
	<%-- ayni header bilgisine Expression Language header implicit objesi ile ulasabiliriz. --%>

	<%=request.getHeader("host")%> <br>
    ${header["host"]} <br>
	${header.host} <br>
	
	<%--request JSP implicit objesi ile 
	Expression Language requestScope implicit objesi ayni degildir! --%>
	
	<%--request adinda bir Expression Language implicit objesi yoktur! --%>
	<%--requestScope ile request scope'taki attribulere ulasir! 
	 --%>
	
	<%=request.getMethod()%> <br>
	<%--${request.method } 
		${requestScope.method } 
	 --%>
	
	<%--pageContext EL implicit objesi araciligiyla request property degerine 
	sonrasinda ise method property degerine ulasabiliriz. --%> 
	
	${pageContext.request.method} <br>
	

</body>
</html>