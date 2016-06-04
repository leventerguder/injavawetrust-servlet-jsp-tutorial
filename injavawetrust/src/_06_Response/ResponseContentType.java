package _06_Response;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseContentType extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		// resp.setContentType("text/html; charset=ISO-8859-9");
		// charset olarak ISO-8859-9 verirsek bu durumda html meta taginda da
		// ayni charset i kullanmaliyiz.
		// Benzer sekilde UTF-8 verirsek html meta taginda UTF-8 kullanmaliyiz.

		PrintWriter pw = resp.getWriter();
		pw.print("<html>");
		pw.print("<head> <meta charset='UTF-8'> </head>");
		pw.print("<body>");
		pw.println("ışçğüö");
		pw.print("</body> </html>");

		System.out.println(resp.getCharacterEncoding());
		System.out.println(resp.getContentType());

	}
}
