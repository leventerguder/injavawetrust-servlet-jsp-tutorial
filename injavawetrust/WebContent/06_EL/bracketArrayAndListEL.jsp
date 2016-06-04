<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	<%--[] operatoru ile array ve list elemanlarina ulasabiliriz. 
	dot operatoru ile bunu yapamayiz! --%>
	
	<%--index 0 dan baslar. 0 , "1" ya da '2' seklinde yapabiliriz. --%>
	
	${myArray[0]} 
	${myArray["1"]}
    ${myArray['2']}


	<br> 
	
	<%--list elemanlarina da array elemanlari gibi ulasabiliriz. --%>
	
	${myList[0]} 
	${myList["1"]}
	
	${mylist['one'] }

</body>
</html>