<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>
	
	<!-- Bu uc yontem de ayni isi yapar! dynamic inclusion -->
	
	<!-- 
	    request JSP implicit objesini kullanarak RequestDispatcher objesi elde edebiliriz.
	    include metodunu kullanarak dynamic inclusion islemini yapabiliriz
	 -->
	 
	<p>##### rd.include ##### </p>
	 
	<%
		RequestDispatcher rd = request.getRequestDispatcher("includeMe.jsp");
		rd.include(request, response);
	%>

    <p>##### pageContext.include ##### </p>
    
	<%
		pageContext.include("includeMe.jsp");
	%>

	<p>##### jsp include action ##### </p>
	
	<jsp:include page="includeMe.jsp"  />

</body>
</html>