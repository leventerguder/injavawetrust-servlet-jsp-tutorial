<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>

<%@page import="_11_ExpressionLanguage.model.Employee"%>

<html>
<body>

<%=((Employee)request.getAttribute("employee")).getDepartment().getDepartmentName()%>
<%=((Employee)request.getAttribute("employee")).getDepartment().getDepartmentId()%>

<br>

<jsp:useBean id="employee" class="_11_ExpressionLanguage.model.Employee" scope="request"></jsp:useBean>
<jsp:getProperty property="department" name="employee"/>

<br>

${employee.department.departmentName }
${employee.department.departmentId }

<br>
${map.key1}
${map.key2}
${map.key3}

<br>
${strArray }
${strArray[0] }
${strArray["1"] }
${strArray[2] }

<br>

${list}
${list[0] }
${list["1"] }

<br>

${employee["name"] }
${employee["empId"] }

<br> 
${map["key1"] }
${map["key2"]}
${map["key3"] }

<br>
${map[EvaluatedString] }

<br>

${map[strArray2[0]] }

</body>
</html>