package acorn;


import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CalculatorTest {

	Calculator c = new Calculator();
	@Test
	void addtest() {
		//fail("Not yet implemented");
		assertEquals(22, c.add(18, 4));
	}
	@Test
	void subtest() {
		//fail("Not yet implemented");
		assertEquals(5, c.sub(8, 3));
	}
	@Test
	void divtest() {
		//fail("Not yet implemented");
		assertEquals(2, c.div(4, 2));
	}
	@Test
	void multitest() {
		//fail("Not yet implemented");
		assertEquals(15, c.multi(3, 5));
	}
	
	//assertArrayEquals(new int[]{1,2,3,6}, u.getYak(6));
 
}
