package MyBean.DB;

import java.io.IOException;  
import java.io.PrintWriter; 
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ViewNullCheck {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	boolean nullChecked;
	
	public boolean nullChecked(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","wz789333");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT note FROM note");
			if(rs.next()){
				nullChecked = true;
			}
			else if(!rs.next()){
				rs.close();
				stmt.close();
				conn.close();
				nullChecked = false;
			}
			rs.close();
			stmt.close();
			conn.close();
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return nullChecked;
	}
	
	public boolean nullInputChecked(String note){
			if(note == null)
				nullChecked = false;
			else
				nullChecked = true;
		
		return nullChecked;
	}
	
}
