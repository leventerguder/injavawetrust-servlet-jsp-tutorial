<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	
	<%="Hello JSP Expression" %>	
	<br>
	
	<!-- c:out JSP Expression gibi calisir, value degerini browserda gosterir. -->
	
	<c:out value="Hello JSTL !" />		
	<br>
	
	<%
		request.setAttribute("name","injavawetrust");
	%>
	
	<%= request.getAttribute("name") %>
	<br>
	
	<!-- value attribute alaninda expression language kullanabiliriz ! -->
	<c:out value="${name}"/>
	<br>
	
	<!-- default attribute'u eger value null'sa yani ilgili attribute bean vs bulunamadiysa calisir. -->
	
	<c:out value="${thisIsNone}" default="i am default" />
	<br>
	
	<!-- default attribute alanini kullanmak yerine body alaninda da yazabiliriz. -->
	<c:out value="${thisIsNone}" >i am default</c:out>	
	<br>
	
	<!-- hem default attribute hem body alanini yazarsak bu durumda calisma zamaninda hata aliriz. -->
	
	<%--
	<c:out value="${thisIsNone}"  default="i am default" >i am default body</c:out>
	
	 --%>
	 	 
	<%="<b> </b> is bold tag" %> 	
	<br> 
	
	<c:out value="<b> </b> is bold tag"/>	
	<br>
	
	<!--  escapeXml varsayilan olarak true dur. -->
	<c:out value="<b> </b> is bold tag" escapeXml="false"/>

</body>
</html>