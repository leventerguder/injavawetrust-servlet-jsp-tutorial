<%@ tag body-content="empty" dynamic-attributes="dynamicAttrs" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="1">
	<c:forEach items="${dynamicAttrs}" var="element">
	<tr>
		<td>${element.key}</td>
		<td>${element.value}</td>
	</tr>
	</c:forEach>
</table>