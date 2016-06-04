package _10_UseBean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _10_UseBean.model.Person;

public class UseBeanRequestImplicit extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Person person1 = new Person("levent", "erguder", 1989);	
		req.setAttribute("myperson",person1);		
		
		RequestDispatcher view = req.getRequestDispatcher("04_UseBean/requestImplicit.jsp");
		view.forward(req, resp);
	
	}
	
}
