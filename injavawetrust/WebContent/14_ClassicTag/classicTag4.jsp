<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="myClassicTagURI" prefix="myClassicTags4"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello ClassicTag4</title>
</head>
<body>

	<myClassicTags4:myClassicTagName4>
		<p>This is classic tag body.</p>	
	</myClassicTags4:myClassicTagName4>

	<p>THIS IS SKIPPED! doEndTag  return SKIP_PAGE; oldugu icin bu kisim calismayacaktir!</p>

</body>
</html>