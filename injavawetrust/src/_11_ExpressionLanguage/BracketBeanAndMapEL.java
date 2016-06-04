package _11_ExpressionLanguage;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _11_ExpressionLanguage.model.Department;
import _11_ExpressionLanguage.model.Employee;

public class BracketBeanAndMapEL extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Department department = new Department(100, "Software Department");
		Employee employee = new Employee(1, "Levent Erguder", department);
		req.setAttribute("myemployee", employee);
		
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");

		req.setAttribute("mymap", map);

		RequestDispatcher view = req.getRequestDispatcher("06_EL/bracketBeanAndMapEL.jsp");
		view.forward(req, resp);
	}
	
}
