package _16_DynamicAttributes;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DynamicAttributeHandler extends SimpleTagSupport implements DynamicAttributes {

	// dinamik attribute'leri ekleyecegimiz Map
	private Map<String, Object> dynamicAttrs = new HashMap<String, Object>();

	// DynamicAttributes arabirimi setDynamicAttribute metoduna sahiptir.
	@Override
	public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
		// dinamik attribute'leri ekleyecegimiz Map'e attribute'leri name/value
		// cifti seklinde ekleyelim.
		dynamicAttrs.put(localName, value);
	}

	@Override
	public void doTag() throws JspException, IOException {

		PageContext pageContext = (PageContext) getJspContext();
		JspWriter out = pageContext.getOut();

		//dongu icerisinde Map e eklenen elemanlari yazdiralim.
		for (String attr : dynamicAttrs.keySet()) {
			out.print("<p>" + attr + " " + dynamicAttrs.get(attr) + "</p>");
		}

		out.print("doTagFinished");

	}
}
