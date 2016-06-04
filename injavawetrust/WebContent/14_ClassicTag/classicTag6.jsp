<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="myClassicTagURI" prefix="myClassicTags6"%>
<%@ page import="java.util.List, java.util.ArrayList"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello ClassicTag6</title>
</head>
<body>

	<%
		List<String> testList = new ArrayList<String>();
		testList.add("element1");
		testList.add("element2");
		testList.add("element3");
		testList.add("element4");

		request.setAttribute("testList", testList);
	%>

	<myClassicTags6:myClassicTagName6 myList="${testList}">
		<p>value : ${element}</p>
	</myClassicTags6:myClassicTagName6>

	<p>after classic tag works</p>

</body>
</html>