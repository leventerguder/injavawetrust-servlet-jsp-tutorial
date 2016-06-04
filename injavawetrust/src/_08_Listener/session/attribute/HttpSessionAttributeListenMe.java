package _08_Listener.session.attribute;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HttpSessionAttributeListenMe extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		session.setAttribute("session attribute", "my attribute");
		session.setAttribute("session attribute", "my new attribute");
		session.removeAttribute("session attribute");
	}

}
