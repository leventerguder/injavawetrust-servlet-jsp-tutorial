<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="mySimpleTagURI" prefix="myTags2"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello SimpleTag2</title>
</head>
<body>

	<c:set var="name" value="Levent"/>

	<myTags2:mySimpleTagName2> 
		Hello! ${name}
		
		<%--
		<%="runtime exception"%>
		 --%>
		 
	</myTags2:mySimpleTagName2>

	<%--
		tld dosyasinda body-content scriptless olarak tanimli oldugu icin body icerisinde JSP Expression kullanamayiz.
		Expression Language ya da plain text kullanabiliriz.
		
		<body-content>scriptless</body-content>
		
	--%>
	
</body>
</html>