package _08_Listener.context;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContextListenerImpl implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("context initialized ...");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("context contextDestroyed ...");
	}

}
