<%@ attribute name="title" required="true" rtexprvalue="true" %>


<!--varsayilan olarak body-content scriptless 'tir.  -->
<%@ tag body-content="scriptless" %>

<h1>${title}</h1>


<!-- jsp:doBody Standard Action'i ile body'nin calismasini saglayabiliriz. -->
<strong><jsp:doBody/></strong>