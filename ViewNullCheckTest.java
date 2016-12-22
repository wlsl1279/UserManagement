package MyBean.DB;

import static org.junit.Assert.*;
import org.junit.*;

public class ViewNullCheckTest {

	@Test
	public void testNullCheckTest(){
		ViewNullCheck check = new ViewNullCheck();
		assertTrue(check.nullChecked());
	}
	
	@Test
	public void testNullInputCheckTest(){
		ViewNullCheck check = new ViewNullCheck();
		assertTrue(check.nullInputChecked(null));
	}

}
