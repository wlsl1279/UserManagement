<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String noteContent = request.getParameter("show");
	
	String DB_URL = 
	           "jdbc:mysql://localhost:3306/sakila";
	                  // 주의 : test by changing mydb to name that you make

	  String DB_USER = "root";
	  String DB_PASSWORD= "wz789333";

	  Connection conn= null;
	  Statement stmt = null;
	  ResultSet rs   = null;
	
	
		try{
		  Class.forName("com.mysql.jdbc.Driver");
		  conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	      stmt = conn.createStatement();
		  
		  String query = "SELECT note FROM note where note ='" + request.getParameter("show")+"'";
		 
		  rs = stmt.executeQuery(query);
		  
		  %>
		<script>
		  alert('<%=rs.getString(1)%>');
		  location.href="OutputNote.jsp";
		</script>
		<%
		  
		  rs.close();
		  stmt.close();
		  conn.close();
		}

		catch(Exception e){
		  out.println( e );
		}
 %>
