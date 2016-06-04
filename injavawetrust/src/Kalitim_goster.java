
class A {
	int i;
	void cikti(){
		System.out.println(i);
	}
	
	
}

class B extends A {
	int j;
	void cikti(){
		System.out.println(j);
	}
}

public class Kalitim_goster {

	public static void main(String[] args) {
		B nesne = new B();
		nesne.i=3;
		nesne.j=1;
		nesne.cikti();
	}
}
