<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="mySimpleTagURI" prefix="myTags3"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello SimpleTag3</title>
</head>
<body>


	<myTags3:mySimpleTagName3 myName="levent">
		<p>This is body.</p>
	</myTags3:mySimpleTagName3>


	<c:set var="nameAttribute" value="myNameAttribute" />
	<c:set var="bodyAttribute" value="myBodyAttribute" />

	<myTags3:mySimpleTagName3 myName="${nameAttribute}">
		<p>${bodyAttribute}</p>
	</myTags3:mySimpleTagName3>

</body>
</html>