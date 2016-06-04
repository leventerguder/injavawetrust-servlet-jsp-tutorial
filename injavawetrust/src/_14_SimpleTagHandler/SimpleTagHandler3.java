package _14_SimpleTagHandler;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagHandler3 extends SimpleTagSupport {

	private String myName;
	
	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}

	@Override
	public void doTag() throws JspException, IOException {
		getJspContext().getOut().print("Hello," + myName);
		getJspBody().invoke(null);
	}

}
