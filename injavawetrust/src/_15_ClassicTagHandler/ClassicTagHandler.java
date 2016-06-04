package _15_ClassicTagHandler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

//Classic Tag Handler kullanmak icin TagSupport sinifini kalitiyoruz.
//Simple Tag Handler kullanmak icin SimpleTagSupport sinifini kalitiyoruz.

public class ClassicTagHandler extends TagSupport {

	// doTag metodu SimpleTagHandler icin kullaniyorduk.
	// doStartTag metodunu Classic Tag Handler icin override edebiliriz.

	// Bu metot JspException firlatabilir , doTag metodunun aksine IOException
	// firlatmaz.

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();
		// TagSupport sinifi PageContext objesine sahiptir.
		// SimpleTagSupport da JspContext objesi vardir.

		try {
			out.println("Hello Classic Tag Handler!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		return SKIP_BODY;
	}
}
