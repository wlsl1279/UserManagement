package MyBean.DB;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class NameLengthCheck {

	public boolean NameLength(String name) {
		if (name.length() > 4)

			return false;

		else

			return true;

	}

}