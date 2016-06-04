package _15_ClassicTagHandler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler5 extends TagSupport {

	private String myName;

	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("Welcome , " + myName);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return EVAL_BODY_INCLUDE;
	}

}
