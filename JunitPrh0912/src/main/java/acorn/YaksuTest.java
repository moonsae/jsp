package acorn;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class YaksuTest {

	Yaksu yak = new Yaksu();
	@Test
	void test() {
		//fail("Not yet implemented");
		assertArrayEquals(new int[] {1,2,3,6},yak.yaksu(6));
		
	}

}
//assertArrayEquals(new int[]{1,2,3,6}, u.getYak(6));