<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%
		request.setAttribute("attribute", "attribute value");
	%>
	
	<%-- header3.tag dosyasi icerisinde <jsp:doBody/> Standard Action'i kullanildigi icin 
	body icerisi calisacaktir. Aksi durumda body icerisi calismaz.
	
	body-content="scriptless" oldugu icin Expression Language degerlendirilir.(evaluated)
	
	body icerisinde hic bir durumda JSP Expression kullanilamaz.
	--%> 
	<myTags:header3 title="header3 title">
		hello body			
		${attribute}
		<%--
	 	<%="Exception !" %>
	 	 --%>
	 </myTags:header3>
	 
	 
	 <!--header4.tag dosyasi icerisinde   tag body-content="tagdependent"  kullanildi.
	 bu durumda JSP Expression Language degerlendirilmez(not evaluated)
	 -->
	 <myTags:header4 title="header4 title">
		hello body			
		${attribute}	
		<%="Hata vermez. body-content tagdependent oldugu icin bu kismi plain text olarak calistirir."%>
	 </myTags:header4>
	 
	 <!-- header5.tag dosyasinda body-content empty tanimlandi bu durumda body'e bir sey yazilamaz.Bosluk da koyulamaz! -->
	 <myTags:header5 title="header5 title"></myTags:header5>
	 <myTags:header5 title="header5 title 2"/>
	
</body>
</html>