package _06_Response;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseExcelDownload extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/ms-excel");
		resp.setHeader("Content-Disposition", "attachment; filename=test.xlsx");

		InputStream is = getServletContext().getResourceAsStream("download.xlsx");
		// getResourceAsStream metodu ile projemizdeki static source/kaynaklara
		// ulasabiliriz.
		// WebContent dizinini relative adress olarak alir. download.xlsx
		// WebContent dizininde yer aldigi icin bu kaynaga sorunsuzca
		// ulasabiliriz.

		int read = 0;
		byte[] bytes = new byte[1024];
		ServletOutputStream sos = resp.getOutputStream();
		while ((read = is.read(bytes)) != -1) {
			sos.write(bytes, 0, read);
		}

		// resp.getWriter();
		// getOutputStream metodunu ve getWriter metodunu ayni anda
		// kullanamayiz.
		// java.lang.IllegalStateException: getOutputStream() has already been
		// called for this response

		sos.close();

	}
}
