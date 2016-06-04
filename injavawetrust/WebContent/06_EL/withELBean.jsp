<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	${myemployee.empId} 
	${myemployee.name}
	${myemployee.department.departmentName }
	${myemployee.department.departmentId }

	<%--
	
	${myemployee.thereIsNoProperty}
	
	eger myemployee beani varsa , eger ilgili property yoksa calisma zamaninda exception verir!
	javax.el.PropertyNotFoundException 
		
	 --%>

	<%--eger bean yoksa , property'i olsa da olmasa da hata vermez!. Ekrana bir sey yazmaz !--%>
	
	${thereIsNoBean.thereIsNoProperty }

</body>
</html>