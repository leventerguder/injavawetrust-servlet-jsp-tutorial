package _08_Listener.request;

import java.util.Date;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class ServletRequestListenerImpl implements ServletRequestListener {

	@Override
	public void requestInitialized(ServletRequestEvent sre) {

		System.out.println("requestInitialized...");

		HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();

		String servletPath = request.getServletPath();
		Date date = new Date();

		System.out.println(servletPath + " " +date);

	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("requestDestroyed...");
	}

}
