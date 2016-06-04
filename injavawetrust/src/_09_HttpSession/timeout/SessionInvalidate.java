package _09_HttpSession.timeout;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionInvalidate extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		session.setAttribute("session attribute", "my attribute");

		session.invalidate();

		// java.lang.IllegalStateException a neden olur session invalidate
		// metodu session'i siler/ucurur/yok eder.
		
		session.setAttribute("new session attribute", "new my attribute");
		session.getAttribute("session attribute");
	}

}
