package _04_ServletContext;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MoreServletContext extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		ServletContext context = getServletContext();

		System.out.println(context.getRealPath("/test.txt"));
		System.out.println(context.getContextPath());
		System.out.println(context.getServletContextName());

	}
}
