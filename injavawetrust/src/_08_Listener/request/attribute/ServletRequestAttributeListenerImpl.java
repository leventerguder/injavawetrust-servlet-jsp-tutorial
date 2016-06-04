package _08_Listener.request.attribute;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;

public class ServletRequestAttributeListenerImpl implements ServletRequestAttributeListener {

	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		System.out.println("request attributeAdded :" + srae.getName() + " " + srae.getValue());
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		System.out.println("request attributeRemoved :" + srae.getName() + " " + srae.getValue());
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		System.out.println("request attributeReplaced :" + srae.getName() + " " + srae.getValue());
	}

}
