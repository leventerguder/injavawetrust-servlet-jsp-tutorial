package _08_Listener.session.binding;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class HttpSessionBindingListenerImpl implements HttpSessionBindingListener {

	@Override
	public void valueBound(HttpSessionBindingEvent event) {

		System.out.println("valueBound HttpSessionBindingListenerImpl... ");
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		System.out.println("valueUnbound HttpSessionBindingListenerImpl... ");
	}

}
