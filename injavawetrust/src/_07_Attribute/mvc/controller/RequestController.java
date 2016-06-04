package _07_Attribute.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import _07_Attribute.mvc.model.People;

public class RequestController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		People person1 = new People("Levent", "Erguder", "Bay");
		People person2 = new People("Semih Okan", "Pehlivan", "Bay");
		People person3 = new People("Muhammet", "Cagatay", "Bay");

		List<People> peopleList = new ArrayList<People>();
		peopleList.add(person1);
		peopleList.add(person2);
		peopleList.add(person3);

		req.setAttribute("peopleList", peopleList);
		
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("requestattribute/requestdispatcher.jsp");
		// RequestDispatcher objemizi ServletRequest objesi uzerinden elde ettigimzide relative path kullanabiliriz.
		
		// WebContent dizini altinda requestattribute dizini olusturuldu.
		// requestdispatcher.jsp dosyasi bu requestattribute dizini altinda.
		dispatcher.forward(req, resp);

	}
}
