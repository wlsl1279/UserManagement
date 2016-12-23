package MyBean.DB;
import org.junit.*;

import static org.junit.Assert.*;


public class DeletedCheckTest {

	@Test
	public void test() {
		DeletedCheck obj = new DeletedCheck();
		assertTrue(obj.DeletedPhonebookCheck("h", "111"));
	}

}
