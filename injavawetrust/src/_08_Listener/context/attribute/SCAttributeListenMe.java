package _08_Listener.context.attribute;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SCAttributeListenMe extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext context = getServletContext();
		
		context.setAttribute("context attribute", "my context attribute");
		
		context.setAttribute("context attribute", "my new context attribute");
		
		context.removeAttribute("context attribute");
		
	}
}
