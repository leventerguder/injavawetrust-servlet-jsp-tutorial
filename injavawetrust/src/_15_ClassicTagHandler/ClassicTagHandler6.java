package _15_ClassicTagHandler;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler6 extends TagSupport {

	private List myList;

	int listCounter;

	public List getMyList() {
		return myList;
	}

	public void setMyList(List myList) {
		this.myList = myList;
	}

	@Override
	public int doStartTag() throws JspException {

		listCounter = 0;
		// Classic Taglar reused ozellige sahiptir. Bu nedenle instance
		// degiskeni burada resetlememiz gereklidir.
		// problem 2 cozum

		JspWriter out = pageContext.getOut();

		// doStartTag metodun da "element" attribute eklememiz gereklidir.
		// Boylece problem 1 ortaya cikmayacaktir.
		pageContext.setAttribute("element", myList.get(listCounter));
		listCounter++;

		try {
			out.print("doStartTag method!");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doAfterBody() throws JspException {

		if (listCounter < myList.size()) {
			pageContext.setAttribute("element", myList.get(listCounter));
			listCounter++;
			return EVAL_BODY_AGAIN;
		} else {
			return SKIP_BODY;
		}

	}

	@Override
	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.print("After body!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		return EVAL_PAGE;
	}
}