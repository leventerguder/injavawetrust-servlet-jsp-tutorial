<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<!-- tag dosyasinda title attribute'u required durumda ! 
	Bu nedenle kullanilmazsa calisma zamaninda hata olur.
	varsayilan degeri required="false" 'tur.
	 -->
	
	<myTags:header2 title="title attribute is required!" />

	<!--tag dosyasinda ,rtexprvalue attribute alani true oldugu icin EL agekullanabiliriz.
	 varsayilan deger rtexprvalue="true"dur.
	  -->
	<%
		request.setAttribute("rtexprvalue", "my runtime expression value");
	%>

	<!-- rtexprvalue="false" olursa burada Expression Language kullanamayiz. -->
	<myTags:header2 title="${rtexprvalue}" />
	
</body>
</html>