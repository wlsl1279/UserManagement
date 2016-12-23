package MyBean.DB;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import static org.junit.Assert.*;

import org.junit.Test;

public class DeletedCheck {

	public boolean DeletedPhonebookCheck(String name, String number) {
		ResultSet rs = null;
		Connection conn = null;
		Statement stat = null;
		String url = "jdbc:mysql://localhost:3306/sakila";
		String id = "root";
		String password = "!asdf1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, password);
			stat = conn.createStatement();
			String queryForDeletedCheck = "SELECT name, number FROM phonebook";	
			rs = stat.executeQuery(queryForDeletedCheck);
			while (rs.next()){
				if ( rs.getString("name").equals(name) && rs.getString("number").equals(number)){
					rs.close();
					stat.close();
					conn.close();
					return false;
				}
			}
				
	
		} catch (Exception e){
			return false;
		}
		return true;
	}
	

}
