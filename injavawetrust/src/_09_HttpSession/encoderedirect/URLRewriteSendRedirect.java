package _09_HttpSession.encoderedirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class URLRewriteSendRedirect extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String encodedRedirectURL =resp.encodeRedirectURL("encodeRedirectME.html");
		
		resp.sendRedirect("encodeRedirectME.html");

		// encodeRedirectURL metodu belirtilen URL adresini sendRedirect metodu
		// icin encoding islemi yapar. Eger encoding gerekli degilse(Cookie'ler
		// aktif se)
		// URL adresi aynen degismeden doner.
		//
		// Browser cookileri desteklemediginde(Cookiler kapali oldugunda)
		// sendRedirect metodunda kullanilan tum URL adresleri encodeRedirectURL
		// metodunu kullanmalidir.
		//
		// sendRedirect metodunda kullanilacak url adresi encoding yapilacagi
		// zaman encodeURL metodu yerine encodeRedirectURL adresi
		// kullanilmalidir.

		
	}
}
