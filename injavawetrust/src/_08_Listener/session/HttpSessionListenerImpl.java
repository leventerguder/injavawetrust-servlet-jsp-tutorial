package _08_Listener.session;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class HttpSessionListenerImpl implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {

		System.out.println("sessionCreated .... " + new Date());
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {

		System.out.println("sessionDestroyed ... " + new Date());
	}

}
