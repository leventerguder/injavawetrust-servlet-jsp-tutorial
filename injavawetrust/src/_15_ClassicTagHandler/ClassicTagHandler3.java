package _15_ClassicTagHandler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler3 extends TagSupport {

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("Hello Classic Tag Handler 3 With Body!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// SKIP_BODY yerine EVAL_BODY_INCLUDE kullandigimizda
		// Body degerlendirmeye alinir!.
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.print("After body!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// sayfanin geri kalanini calistir.
		return EVAL_PAGE;
	}
}
