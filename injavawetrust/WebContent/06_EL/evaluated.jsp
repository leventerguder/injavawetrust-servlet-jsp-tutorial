<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	<%--EvaluatedString " " karakterleri arasinda olmadigi icin 
	Container EvaluatedString isimli attribute var mi diye bakacaktir ! --%>
	
	<%--EvaluatedString isimli attribute mevcut bu nedenle degeri kullanilacaktir "key1" --%>
	${mymap[EvaluatedString]}
	
	<%--
	Yukaridaki ifade bu ifadeye donusturulecektir.
	${mymap["key1"]}
	 --%>
	
</body>
</html>