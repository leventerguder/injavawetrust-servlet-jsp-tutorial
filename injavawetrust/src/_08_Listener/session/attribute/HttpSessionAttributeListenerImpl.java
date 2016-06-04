package _08_Listener.session.attribute;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class HttpSessionAttributeListenerImpl implements HttpSessionAttributeListener {

	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		System.out.println("attributeAdded : " + se.getName() + " " + se.getValue());
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		System.out.println("attributeRemoved : " + se.getName() + " " + se.getValue());
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		System.out.println("attributeReplaced : " + se.getName() + " " + se.getValue());

	}

}
