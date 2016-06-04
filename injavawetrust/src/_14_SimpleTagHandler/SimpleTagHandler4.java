package _14_SimpleTagHandler;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagHandler4 extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		getJspContext().setAttribute("message", "Hello Message!");
		getJspBody().invoke(null);
	}

}
