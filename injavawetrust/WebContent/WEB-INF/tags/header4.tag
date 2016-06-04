<%@ attribute name="title" required="true" rtexprvalue="true" %>


<%@ tag body-content="tagdependent" %>

<h1>${title}</h1>

<strong><jsp:doBody/></strong>