package _06_Response;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseHeaderMethods extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setHeader("firstName", "myname");
		// setHeader metodu ile response header ekliyoruz.
		// setHeader metodu, eger ilgili isme sahip(firstName) header yoksa
		// olusturur varsa uzerine yazar override eder.

		resp.setHeader("firstName", "myname-Override!");
		// setHeader metodu onceki firstName ismine sahip header bilgisini
		// override edecektir.

		// containsHeader metodu parametre olarak aldigi degerde response header
		// olup olmadigini kontrol eder.
		// Eger ilgili response header varsa true yoksa false donecektir.
		boolean contains = resp.containsHeader("firstName");
		System.out.println("contains:" + contains);

		String firstName = resp.getHeader("firstName");
		// getHeader metodu ile fistName ismine sahip response header'a
		// ulasabiliriz.

		System.out.println("firstName:" + firstName);

		resp.addHeader("firstName", "your name");
		resp.addHeader("firstName", "his name");

		// addHeader metodu override yapmaz! Bunun yerine ekleme yapacaktir.

		// firstName ismine sahip response header'inin 3 tane degeri var.
		// Peki bu degerlere nasil ulasabiliriz ?
		System.out.println("### more value getHeader test###");
		firstName = resp.getHeader("firstName");
		System.out.println("firstName:" + firstName);

		// getHeader metodu yetersiz kalmaktadir.Eger ayni isme sahip header
		// varsa bu durumda ilk eklenen header'a ait degeri dondurmektedir.

		System.out.println("#### getHeaders test ####");
		Collection<String> firstNamesHeader = resp.getHeaders("firstName");
		for (String firstNameHeader : firstNamesHeader) {
			System.out.println("firstName:" + firstNameHeader);
		}

		// setIntHeader ve addIntHeader da value parametresi int tipindedir.
		// Bu sayede int tipindeki bir degiskeni String'e convert etmeden direkt
		// kullanabiliriz.

		resp.setIntHeader("year", 571);
		resp.addIntHeader("year", 1071);

		// Benzer sekilde setDateHeader ve addDateHeader metodunun value kismi
		// long tipindedir.
		resp.setDateHeader("today", System.currentTimeMillis());
		resp.addDateHeader("today", 10000000L);

		System.out.println("#### getHeaderNames ####");

		// getHeaderNames metodu bize response header'larin ismini donecektir.
		Collection<String> headerNames = resp.getHeaderNames();
		for (String headerName : headerNames) {
			System.out.println(headerName);
			
		}

	}

}
