<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="myDynamicAttributesTagURI" prefix="dynamicAttrPrefix"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello DynamicAttributesTag</title>
</head>
<body>

	<h1>Dynamic Attribute Tag</h1>
	<dynamicAttrPrefix:mySimpleTagDynamicAttribute name="Levent"
		surname="Erguder" />


	<dynamicAttrPrefix:mySimpleTagDynamicAttribute city="Istanbul"
		country="Turkey" regional="Asia" />


</body>
</html>


