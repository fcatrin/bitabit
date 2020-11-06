import java.util.List;
import java.util.ArrayList;

// -Xmx128m

public class TestHeap_01 {
	static List<int[]> data = new ArrayList<int[]>();
	
	private static void loop() throws Exception {
		while (true) {
			data.add(buildTestArray());
			if (Math.random() < 0.2f) Thread.sleep(1);
			if (Math.random() < 0.5f) System.out.println("size " + data.size());
		}
	}
	
	private static int [] buildTestArray() {
		int a[] = new int[256];
		for(int i=0; i<a.length; i++) {
			a[i] = (int)Math.random()*1024*1024;
		}
		return a;
	}
	
	public static void main(String args[]) throws Exception {
		loop();
	}
}