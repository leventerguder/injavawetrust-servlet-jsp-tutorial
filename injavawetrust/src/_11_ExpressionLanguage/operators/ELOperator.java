package _11_ExpressionLanguage.operators;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ELOperator extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		int num1 = 1;
		String num2 = "2";
		int num7=7;	
		boolean bool1= true;		
		
		List list1 = new ArrayList();	
		list1.add("true");
		list1.add("false");
		
		req.setAttribute("num1", num1);
		req.setAttribute("num2", num2);
		req.setAttribute("num7", num7);
		req.setAttribute("list1", list1);
		req.setAttribute("bool1", bool1);
		
		RequestDispatcher view = req.getRequestDispatcher("06_EL_operator/eloperator.jsp");
		view.forward(req, resp);

	}
}
