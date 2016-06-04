package _11_ExpressionLanguage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _11_ExpressionLanguage.model.Department;
import _11_ExpressionLanguage.model.Employee;

public class WithExpressionLanguageBean extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		Department department = new Department(100, "Software Department");
		Employee employee = new Employee(1, "Levent Erguder", department);
		req.setAttribute("myemployee", employee);

		RequestDispatcher view = req.getRequestDispatcher("06_EL/withELBean.jsp");
		view.forward(req, resp);
	
	}
}
