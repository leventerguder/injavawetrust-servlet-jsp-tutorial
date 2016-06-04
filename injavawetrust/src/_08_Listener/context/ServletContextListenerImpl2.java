package _08_Listener.context;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContextListenerImpl2 implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("context initialized 2 ...");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("context contextDestroyed 2...");
	}

}
