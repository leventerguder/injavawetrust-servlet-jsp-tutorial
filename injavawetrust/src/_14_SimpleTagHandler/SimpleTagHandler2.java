package _14_SimpleTagHandler;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagHandler2 extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		getJspBody().invoke(null);
	}
}
