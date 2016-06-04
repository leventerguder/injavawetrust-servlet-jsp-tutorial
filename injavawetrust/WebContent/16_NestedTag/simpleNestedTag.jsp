<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="nestedTagURI" prefix="myTags2"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello Simple Nested Tag</title>
</head>
<body>

	<myTags2:mySimpleNestedTagName>
		<myTags2:mySimpleNestedTagName>
			<myTags2:mySimpleNestedTagName>
			</myTags2:mySimpleNestedTagName>
		</myTags2:mySimpleNestedTagName>
	</myTags2:mySimpleNestedTagName>

</body>
</html>