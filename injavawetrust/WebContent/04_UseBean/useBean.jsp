<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestImplicit.jsp</title>
</head>
<body>


	<%--<jsp:useBean> action'i id olarak  UseBeanGetProperty servlet sinifinda ekledigimiz attribute ismini verelim; person1  --%>
	<%--class alanina packagename.classname ismi veriyoruz. --%>
	<%--<jsp:useBean> action'i icin varsayilan scope page scope'tur.
	 Bizim ekledigimiz attribute request scope'ta bu nedenle acik bir sekilde/explicit scope belirtmeliyiz. --%>

	<jsp:useBean id="myperson" class="_10_UseBean.model.Person"
		scope="request">

	</jsp:useBean>


	<%-- <jsp:getProperty> action'i ile property alanlarina ulasabiliriz. 
 	property alanina bean sinifimizdaki field'leri veriyoruz.
 	property alanlarina ulasabilmek icin getter metodu olmalidir.
 	name alanina da jsp:useBean action'da kullandigimiz id bilgisini veriyoruz.
 	--%>

	<jsp:getProperty property="name" name="myperson" />
	<jsp:getProperty property="surname" name="myperson" />
	<jsp:getProperty property="year" name="myperson" />

	<br />

	<%-- jsp:useBean action'i eger obje yoksa olusturur! --%>
	<jsp:useBean id="thereIsNoBean" class="_10_UseBean.model.Person"
		scope="request">
	</jsp:useBean>

	<%-- jsp:useBean action'i Person tipinde obje olusturur. 
	instance degiskenler initialized olacaktir. --%>

	<jsp:getProperty property="name" name="thereIsNoBean" />
	<jsp:getProperty property="surname" name="thereIsNoBean" />
	<jsp:getProperty property="year" name="thereIsNoBean" />



</body>
</html>

