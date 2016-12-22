package MyBean.DB;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class create {

	
	public boolean phonebookDuplicateCheck(String name, String number) {
		ResultSet rs = null;
		Connection conn = null;
		Statement stat = null;
		String url = "jdbc:mysql://localhost:3306/sakila";
		String id = "root";
		String password = "wz789333";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, password);
			stat = conn.createStatement();
			String queryForDuplicateCheck = "SELECT name, number FROM phonebook";	
			rs = stat.executeQuery(queryForDuplicateCheck);
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
	
	public boolean dateInputTypeCheck(String date, String schedule) {
		ResultSet rs = null;
		Connection conn = null;
		Statement stat = null;
		String url = "jdbc:mysql://localhost:3306/sakila";
		String id = "root";
		String password = "wz789333";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, password);
			stat = conn.createStatement();
			String queryForDuplicateCheck = "SELECT date, description FROM schedule";	
			rs = stat.executeQuery(queryForDuplicateCheck);
			while (rs.next()){
				if ( rs.getString("date").equals(date) && rs.getString("description").equals(schedule)){
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
