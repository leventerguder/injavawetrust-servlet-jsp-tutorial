package _09_HttpSession.timeout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionTimeOut extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		Integer maxInactiveInternal = session.getMaxInactiveInterval();
		System.out.println("default timeout:" + maxInactiveInternal);

		session.setMaxInactiveInterval(10); // 10 saniye

		maxInactiveInternal = session.getMaxInactiveInterval();
		System.out.println("updated timeout:" + maxInactiveInternal);

		session.setAttribute("name", "levent");
		String name = (String) session.getAttribute("name");
		System.out.println(name);

		name = (String) session.getAttribute("name");
		System.out.println(name);

		PrintWriter pw = resp.getWriter();
	
		pw.print("<a href=sessiontimeoutcheck>check me </a>");

	}
}
