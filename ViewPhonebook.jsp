<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String noteContent = request.getParameter("show");
	
	String DB_URL = 
	           "jdbc:mysql://localhost:3306/sakila";
	                  // 주의 : test by changing mydb to name that you make

	  String DB_USER = "root";
	  String DB_PASSWORD= "wz789333";

	  Connection con= null;
	  Statement stmt = null;
	  ResultSet rs   = null;
	
	
		try{
		  Class.forName("com.mysql.jdbc.Driver");
		  con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	      stmt = con.createStatement();
		  
		  String query = "SELECT name,number FROM phonebook where name ='" + request.getParameter("show")+"'";
		 
		  rs = stmt.executeQuery(query);
		  
		  %>
<script>
		  alert('<%=rs.getString(1)%>');
		  location.href="OutputViewSchedule.jsp";
		  </script>
<%
		  
		  rs.close();
		  stmt.close();
		  con.close();
		  
		}
		  

		  catch(Exception e){
		   	out.println( e );
		  }
 %>
