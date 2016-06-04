package _06_Response;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseCookieMethods extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Cookie userNameCookie = new Cookie("userName", "levent");
		userNameCookie.setMaxAge(5); //5 saniye time out suresi
		System.out.println(userNameCookie.getMaxAge());
		// bu servlet bir kere cagirdiktan sonra ResponseCookieTimeoutCheck
		// servlet ini calistiralim.
		
		// Cookilere goz attigimizda 5 saniye sonra userName cookiesi silinecektir.

		Cookie passwordCookie = new Cookie("password", "123456");

		resp.addHeader("Set-Cookie", "testName=testValue");
		resp.addCookie(userNameCookie);
		resp.addCookie(passwordCookie);

		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				System.out.println(c.getName() + " " + c.getValue());
			}
		}

	}
}
