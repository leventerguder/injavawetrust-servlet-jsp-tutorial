package _14_SimpleTagHandler;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagHandler6 extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {

		
		getJspContext().getOut().print("Hello SimpleTag Example.");
		getJspBody().invoke(null);
		
		String myValue = null;
		// ...

		if (myValue == null) {
			throw new SkipPageException();
		}
		

	}

}
