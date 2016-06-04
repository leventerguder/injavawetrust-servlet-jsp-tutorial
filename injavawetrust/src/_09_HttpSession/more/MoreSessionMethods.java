package _09_HttpSession.more;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MoreSessionMethods extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		Integer accessCount = (Integer) session.getAttribute("accessCount");
		if (accessCount == null) {
			accessCount = 0;
		} else {
			accessCount++;
		}

		session.setAttribute("accessCount", accessCount);

		String id = session.getId();
		Date creationTime = new Date(session.getCreationTime());
		Date lastAccessedTime = new Date(session.getLastAccessedTime());
		Integer maxInactiveInternal = session.getMaxInactiveInterval();

		PrintWriter pw = resp.getWriter();

		pw.print("<html><body><table>");
		pw.print("<tr><td>Session ID</td>");
		pw.print("<td>" + id + "</td>");
		pw.print("<tr><td>Creation Time</td>");
		pw.print("<td>" + creationTime + "</td>");
		pw.print("<tr><td>Last Accessed Time</td>");
		pw.print("<td>" + lastAccessedTime + "</td>");
		pw.print("<tr><td>Max Intactive Interval</td>");
		pw.print("<td>" + maxInactiveInternal + "</td>");
		pw.print("<tr><td>Access Count</td>");
		pw.print("<td>" + accessCount + "</td>");
		pw.print("</table></body></html>");
	}
}
