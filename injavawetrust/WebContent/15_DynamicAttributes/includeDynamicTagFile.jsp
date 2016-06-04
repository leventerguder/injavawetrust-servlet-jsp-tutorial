<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="myTag" tagdir="/WEB-INF/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DynamicAttributes TagFile</title>
</head>
<body>

	<p>Name&Surname </p>

	<myTag:dynamicTag  name="Levent" surname="Erguder"/>
	
	<p>Address </p>

	<myTag:dynamicTag  city="Istanbul" country="Turkey" regional="Asia"/>


</body>
</html>