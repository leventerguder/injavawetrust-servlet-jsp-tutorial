package _08_Listener.session.activation;

import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionEvent;

public class HttpSessionActivationListenerImpl implements HttpSessionActivationListener {

	@Override
	public void sessionWillPassivate(HttpSessionEvent se) {
		System.out.println("sessionWillPassivate ...");
	}

	@Override
	public void sessionDidActivate(HttpSessionEvent se) {
		System.out.println("sessionDidActivate ...");
	}

}
