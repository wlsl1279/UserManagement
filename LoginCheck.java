package test;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginCheck  {
   Connection conn = null;
   Statement stat = null;
   String url = "jdbc:mysql://localhost:3306/sakila";        
   String dbuser = "root";                                       
   String dbpassword = "630910han"; 
   ResultSet rs = null;
   
   public boolean testLoginCheck(String id, String password) {
      
      try {
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(url, dbuser, dbpassword);
         stat = conn.createStatement();
         String queryForLogin = "SELECT id, password FROM information where no='1'";   
         rs = stat.executeQuery(queryForLogin);
         while (rs.next()){
            if ( rs.getString(1).equals(id) && rs.getString(2).equals(password)){
               
               rs.close();
               stat.close();
               conn.close();
               return true;
            }else{
               
               rs.close();
               stat.close();
               conn.close();
               return false;
            }
         }
   
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      } 
      
      return false;
   }

   public void dateInputTypeCheck() {

   }
}