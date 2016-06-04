<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="myClassicTagURI" prefix="myClassicTags5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello ClassicTag5</title>
</head>
<body>

	<c:set var="name" value="Levent" />

	<!-- rtexprvalue true oldugu icin myName attribute'te expression language kullanilabilir. 
		eger false olursa ve expression language kullanilirirsa calisma zamaninda hata verecektir.
	 -->
	<!-- required true oldugu icin bu attribute zorunludur. -->
	<myClassicTags5:myClassicTagName5 myName="${name}">
		<p>This is classic tag body with attribute !</p>
	</myClassicTags5:myClassicTagName5>


</body>
</html>