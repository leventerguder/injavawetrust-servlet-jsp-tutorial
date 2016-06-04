package _09_HttpSession.urlrewrite;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class EncodeURL {

	public static void main(String[] args) throws UnsupportedEncodingException {
		String str ="<!@#$levent erguder>";
		String encoded=URLEncoder.encode(str,"UTF-8");	
		System.out.println("encoded:"+encoded);
		
		String decoded=URLDecoder.decode(encoded,"UTF-8");
		System.out.println("decoded:"+decoded);
		
	}
}
