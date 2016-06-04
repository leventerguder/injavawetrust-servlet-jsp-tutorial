package _06_Response;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseRedirectMore extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		// resp.sendRedirect("redirectMe.html");
		// WebContent altinda redirectMe.html dosyasi olusturduk.
		// Relative adress kullandigimizda WebContent i referans alacaktir.

		// PrintWriter pw = resp.getWriter();
		// pw.println("java.lang.IllegalStateException");
		// pw.print("Cannot call sendRedirect() after the response has been committed");	
		 //pw.flush();
		// pw.close();
		 
		// flush , close gibi metotlari cagirdigimizda response commit edilir bundan sonra
		
		// sendRedirect cagrilirsa java.lang.IllegalStateException hatasi
		// verecektir.

		resp.sendRedirect("/injavawetrust/redirectMe.html");
		// absolute path / ile baslar. Bu durumda context path'i de yazmamiz
		// gereklidir.

		System.out.println("Bu kisim calismayacaktir!");

	}
}
