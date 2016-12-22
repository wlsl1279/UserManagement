package test;

import org.junit.*;
import static org.junit.Assert.*;

public class accountTest {
   @Test
   public void testLoginCheck() {
      LoginCheck obj = new LoginCheck();
      assertTrue(obj.testLoginCheck("admin", "rhksflwk"));
   }
   @Test
   public void testChangedIdCheck() {
	      ChangedIdCheck obj = new ChangedIdCheck();
	      assertTrue(obj.testChangedIdCheck("admin", "admin"));
	   }
}