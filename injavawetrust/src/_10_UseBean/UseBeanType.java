package _10_UseBean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _10_UseBean.model.AbstractPerson;
import _10_UseBean.model.Employee;
import _10_UseBean.model.Person;

public class UseBeanType extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		AbstractPerson person1 = new Employee(100, "levent", "erguder", 1989);	
		req.setAttribute("abstractperson", person1);

		RequestDispatcher view = req.getRequestDispatcher("04_UseBean/abstractUseBeanType.jsp");
		view.forward(req, resp);
	}
}
