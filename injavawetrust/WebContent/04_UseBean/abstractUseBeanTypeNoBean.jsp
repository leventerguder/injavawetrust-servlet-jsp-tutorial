<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestImplicit.jsp</title>
</head>
<body>

	<%--class attribute yerine type attribute de kullanilabilir.
	Bu durumda ilgili id'ye sahip request attribute ilgili scope'ta olmalidir.
	
	HTTP Status 500 - An exception occurred processing hatasi verecektir.
	
	 --%>

	<jsp:useBean id="thereIsNoBean" type="_10_UseBean.model.AbstractPerson" scope="request">
	
	</jsp:useBean>

</body>
</html>

