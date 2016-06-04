package _01_HelloServletWorld;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServletWorld extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		PrintWriter pw = resp.getWriter();
		Date today = new Date();
		String msg = "HelloServletWorld";

		pw.print("<html><body> <h1>" + msg + "</h1>");
		pw.print("<p>today:" + today + "<p>");
		pw.print("<a href=	http://www.injavawetrust.com/>injavawetrust </a>");
		pw.print("</body></html>");

	}

}
