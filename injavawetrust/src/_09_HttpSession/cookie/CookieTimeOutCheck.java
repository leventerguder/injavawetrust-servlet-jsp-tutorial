package _09_HttpSession.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieTimeOutCheck extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter pw = resp.getWriter();
		
		Cookie [] cookies = req.getCookies();
		
		if(cookies!=null){
			for(Cookie c: cookies){
				pw.println(c.getValue() + " "+c.getName());
			}
		}else {
			pw.println("no cookie");
		}
			
	}

}
