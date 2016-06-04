package _07_Attribute.context;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetContextAttribute extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		ServletContext context = getServletContext();

		String attribute = (String) context.getAttribute("contextAttribute");

		System.out.println("context attribute:" + attribute);
		

	}
}
