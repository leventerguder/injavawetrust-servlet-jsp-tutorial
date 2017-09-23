function sendAjaxQuery() {
	$.ajax({
		url : 'GetUserServlet',
		data : {
			name : $('#firstname').val()
		},
		success : function(responseText) {
			$('#ajaxGetUserServletResponse').text(responseText);
		}
	});
}