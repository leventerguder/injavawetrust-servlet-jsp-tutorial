package _09_HttpSession.urlrewrite;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class URLRewrite extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		PrintWriter out = resp.getWriter();
		String nonEncodedUrl = "getsession";
		String encodedUrl = resp.encodeURL("getsession");
		// relative adresimizi

		HttpSession session = req.getSession();
		session.setAttribute("name", "levent");

		out.println("<html>");
		out.println("<head>");
		out.println("<title>URL Rewriter</title>");
		out.println("</head>");
		out.println("<body>");
		//out.println("Giris - <a href=\"" + nonEncodedUrl + "\"> Click Here</a>.");
		out.println("Giris - <a href=\"" + encodedUrl + "\"> Click Here</a>.");
		// link'ler HTTP GET olarak calisir.
		out.println("</body>");
		out.println("</html>");

	}

}
