package _08_Listener.context.attribute;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

public class ServletContextAttributeListenerImpl implements ServletContextAttributeListener {

	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {

		System.out.println("ServletContext attributeAdded : " + scae.getName() + " " + scae.getValue());

	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		System.out.println("ServletContext attributeRemoved : " + scae.getName() + " " + scae.getValue());
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		System.out.println("ServletContext attributeReplaced : " + scae.getName() + " " + scae.getValue());
	}

}
