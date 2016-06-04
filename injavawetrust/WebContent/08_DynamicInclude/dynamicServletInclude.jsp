<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>
	
	<!-- Bu uc yontem de ayni isi yapar! dynamic inclusion 
	Bir JSP Sayfasinda dynamic inclusion ile servlet'i include edebiliriz.
	-->
		 
	<p>##### rd.include ##### </p>
	 
	<%
		RequestDispatcher rd = request.getRequestDispatcher("/dynamicIncludeMe");
		rd.include(request, response);
	%>

    <p>##### pageContext.include ##### </p>
    
	<%
		pageContext.include("/dynamicIncludeMe");
	%>

	<p>##### jsp include action ##### </p>
	
	<jsp:include page="/dynamicIncludeMe"  />

</body>
</html>