<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="_11_ExpressionLanguage.model.Employee"%>

<html>
<body>

	<!--Employee sinifinda Department tipinde instance variable yer almaktadir. (Employee HAS-A Department)
		departmentId ve departmentName alanlarina ulasmak icin request scope'tan myemployee objesini aldik.
	  -->

	<%=((Employee) request.getAttribute("myemployee")).getDepartment().getDepartmentId()%>
	<%=((Employee) request.getAttribute("myemployee")).getDepartment().getDepartmentName()%>


	<br>


	<!-- jsp:useBean ile Employee icerisinden department uzerinden Department beane ulasamayiz!
		jsp:useBean action'i bu konuda yetersiz kalmaktadir. 
	  -->

	<jsp:useBean id="myemployee"
		class="_11_ExpressionLanguage.model.Employee" scope="request">
	</jsp:useBean>

	<jsp:getProperty property="department" name="myemployee" />

</body>
</html>