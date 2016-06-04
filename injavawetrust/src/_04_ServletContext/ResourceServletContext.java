package _04_ServletContext;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResourceServletContext extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext context = getServletContext();

		// InputStream is =
		// context.getResourceAsStream("/properties/myproperties.properties");
		InputStream inputStream = context.getResourceAsStream("/WEB-INF/myproperties.properties");

		Properties props = new Properties();
		props.load(inputStream);

		System.out.println(props.get("name"));
		System.out.println(props.get("surname"));

		InputStream inputStream2 = context.getResourceAsStream("/test.txt");
		int content;
		ServletOutputStream os = resp.getOutputStream();
		while ((content = inputStream2.read()) != -1) {
			System.out.print((char) content);
			os.write(content);
			// //write metodu ile browser'a veri yazabiliriz.
		}

		System.out.println();

		URL url = context.getResource("/test.txt");
		InputStream inputStream3 = url.openStream();

		int content2;
		while ((content2 = inputStream3.read()) != -1) {
			System.out.print((char) content2);
		}
	}
}
