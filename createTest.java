package MyBean.DB;

import org.junit.*;
import static org.junit.Assert.*;

public class createTest {
	@Test
	public void testPhonebookDuplicateCheck() {
		// 중복된 주소록을 입력하면 또 저장이 되는지 안되는지 테스트하는 테스팅 함수
		create obj = new create();
		assertTrue(obj.phonebookDuplicateCheck("jin", "111"));
	}

	@Test
	public void testDateInputTypeCheck() {
		// 만약 Date를 날짜 형태가 아니라 문자/문자열로 잘못 입력해도 저장이 되는지 안되는지 테스트하는 테스팅 함수
		create obj = new create();
		assertTrue(obj.dateInputTypeCheck("날짜 대신 문자입력", "스케줄"));
	}
}
