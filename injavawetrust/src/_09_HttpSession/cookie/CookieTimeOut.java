package _09_HttpSession.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieTimeOut extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Cookie cookie = new Cookie("username","levent");
		cookie.setMaxAge(10); // 10 saniye sonra cookie silinsin
		resp.addCookie(cookie);
		
		String contextPath = req.getContextPath();
		
		String url= contextPath+"/cookietimeoutcheck";
		
		PrintWriter pw = resp.getWriter();
		
		pw.println("<html><body>");
		pw.println(" <a href=\"" + url
				+ "\"> Click Here</a>.");
		
	}
	
}
