<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

<%--tek tirnak ya da cift tirnak kullanilabilir ! --%>
${myemployee["empId"]} 
${myemployee['name']}
${myemployee['department']["departmentId"]}
${myemployee["department"]["departmentName"]}

<%--
	yukaridaki ifaleler nokta(dot) operatoru ile su ifadelere karsilik gelmektedir. 
	
	${myemployee.empId} 
	${myemployee.name}
	${myemployee.department.departmentName }
	${myemployee.department.departmentId }

 --%>


<br/>

${mymap["key1"]}
${mymap["key2"]}
${mymap["key3"]}

<%--
	yukaridaki mymap ifadeleri nokta(dot) operatoru ile su ifadelere karsilik gelmektedir.
	
	${mymap.key1}
    ${mymap.key2} 
    ${mymap.key3}

 --%>


</body>
</html>