package _17.NestedTagHandler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class Menu extends TagSupport {

	private ArrayList items;

	// dikkat edelim attribute setter metodu degil!
	// bu metot MenuItem sinifinda cagrilmaktadir.
	// Child parent'taki item degerini ArrayList'e ekliyoruz.
	// Boylelikle Parent Tag , Child Tag'in attribute degerine ulasabilir.
	public void addMenuItem(String item) {
		items.add(item);
	}

	public int doStartTag() throws JspException {
		// classic tag larda instance variable'i resetlemeyi unutmayalim!
		items = new ArrayList();
		// donus tipi EVAL_BODY_INCLUDE olmali ki Child Tag calissin.
		return EVAL_BODY_INCLUDE;
	}

	public int doEndTag() throws JspException {

		try {
			pageContext.getOut().println("Menu items are: " + items);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return EVAL_PAGE;

	}
}