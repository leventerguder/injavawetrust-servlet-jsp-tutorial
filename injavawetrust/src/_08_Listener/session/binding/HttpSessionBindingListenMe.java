package _08_Listener.session.binding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HttpSessionBindingListenMe extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		HttpSessionBindingListenerImpl attribute = new HttpSessionBindingListenerImpl();
		session.setAttribute("binding attribute", attribute);

		session.removeAttribute("binding attribute");
	}
}
