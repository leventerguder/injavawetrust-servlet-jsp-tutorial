<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="mySimpleTagURI" prefix="myTags5"%>

<%@ page import="java.util.List, java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello SimpleTag5</title>
</head>
<body>

	<%
		List<String> testList = new ArrayList<String>();
		testList.add("elemenent1");
		testList.add("elemenent2");
		testList.add("elemenent3");
		testList.add("elemenent4");

		request.setAttribute("testList", testList);
	%>

	<myTags5:mySimpleTagName5 myList="${testList}">
		<p>${myAttribute}</p>
	</myTags5:mySimpleTagName5>


</body>
</html>