package _15_ClassicTagHandler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler2 extends TagSupport {

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("Hello Classic Tag Handler 2!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// Body degerlendirmeye alinmaz.
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.print("doEndTag works!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// sayfanin geri kalanini calistir.
		return EVAL_PAGE;
	}
}
