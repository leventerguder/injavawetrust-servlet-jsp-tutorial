package _17.NestedTagHandler;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MenuItem extends TagSupport {
	
	//MenuItem Tag'i icin  TLD dosyamizda itemValue attribute ekledik.
	private String itemValue;

	public void setItemValue(String value) {
		itemValue = value;
	}

	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	public int doEndTag() throws JspException {
		Menu parent = (Menu) getParent();
		parent.addMenuItem(itemValue);
		return EVAL_PAGE;
	}
}