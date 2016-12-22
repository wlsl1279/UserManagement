package MyBean.DB;

import static org.junit.Assert.*;
import org.junit.*;

public class LengthCheck {

	@Test
	public void nameNameLength() {
		NameLengthCheck obj = new NameLengthCheck();
	    assertTrue(obj.NameLength("¾ÈÇöÁø"));
	}

}
