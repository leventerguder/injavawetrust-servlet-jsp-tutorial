package _04_ServletContext;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;
import java.util.ArrayList;

public class HelloServletContext extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		ServletContext context = getServletContext();
		ServletConfig config = getServletConfig();

		String email = context.getInitParameter("email");
		String address = config.getServletContext().getInitParameter("address");
		String name = config.getInitParameter("name");
		String surname = config.getInitParameter("surname");

		PrintWriter pw = resp.getWriter();

		pw.print("<html><body>");
		pw.print(name + "  " + surname + "<br>");
		pw.print(email + "<br>");
		pw.print(address + "<br>");
		pw.print("</body></html>");

		System.out.println("Servlet Init Parameteres Names");
		Enumeration<String> servletInitParams = config.getInitParameterNames();
		while (servletInitParams.hasMoreElements()) {
			System.out.println(servletInitParams.nextElement());
		}

		System.out.println("Context Init Parameters Names");
		Enumeration<String> contextInitParams = context.getInitParameterNames();
		while (contextInitParams.hasMoreElements()) {
			System.out.println(contextInitParams.nextElement());
		}

	}

}