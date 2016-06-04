package _15_ClassicTagHandler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class ClassicTagHandler7 extends BodyTagSupport {

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();
		try {
			out.print("<p> doStartTag method works ! </p>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		// doInitBody metodunun calismasi icin EVAL_BODY_BUFFERED donmelidir!
		return EVAL_BODY_BUFFERED;
	}

	@Override
	public void doInitBody() throws JspException {

		JspWriter out = pageContext.getOut();
		try {
			// doInitBody metodunda out.print metodu direkt cikti olusturmaz
			// bunu bodyContent olarak tamponlar.(buffer)
			out.print("<p> doInitBody out.print works ! </p>");
		} catch (IOException e) {
			e.printStackTrace();
		}

		try {
			// Benzer sekilde bodyContent.print metodunu da kullanabiliriz.
			bodyContent.print("<p> doInitBody bodyContent.print ! </p>");
		} catch (IOException e) {
		}

	}

	public int doAfterBody() throws JspException {

		JspWriter out = pageContext.getOut();
		try {
			out.print("<p> doAfterBody out print works ! </p>");
		} catch (IOException e) {

			e.printStackTrace();
		}

		try {
			bodyContent.print("<p> doAfterBody bodyContent.print works ! </p>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SKIP_BODY;

	}

	public int doEndTag() throws JspException {
		try {
			System.out.println(bodyContent.getString());
			// tamponlanan(buffered) icerigi doEndTag metodunda yazabiliriz.
			pageContext.getOut().print(bodyContent.getString());

			pageContext.getOut().print("<p> doEndTag finished! </p>");
			return EVAL_PAGE;
		} catch (IOException e) {
			throw new JspException(e.getMessage());
		}
	}

}