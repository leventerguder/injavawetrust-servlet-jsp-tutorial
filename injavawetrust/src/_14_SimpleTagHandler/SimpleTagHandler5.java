package _14_SimpleTagHandler;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagHandler5 extends SimpleTagSupport {

	private List<String> myList;

	public List<String> getMyList() {
		return myList;
	}

	public void setMyList(List<String> myList) {
		this.myList = myList;
	}

	@Override
	public void doTag() throws JspException, IOException {
		for (String element : myList) {
			getJspContext().setAttribute("myAttribute", element);
			getJspBody().invoke(null);
		}
	}

}
