package acorn;

import java.util.ArrayList;
import java.util.Arrays;

public class Yaksu {
	public int[] yaksu(int a) {
		int index=0;
		int[] result_d = new int[a];
		for(int i=1; i<=a/2; i++) {
			if(a%i==0) {
				result_d[index]=i;
				index++;
			}
		}
		result_d[index++]=a;
		int[] result = new int[index];
		for(int i=0; i<index; i++) {
			result[i] = result_d[i];
		}
		return result;
	}
	public static void main(String[] args) {
	
		Yaksu u = new Yaksu();
		System.out.println(Arrays.toString(u.yaksu(6)));
		 
		
	}

 
}
