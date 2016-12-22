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
		  conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		  stmt = conn.createStatement(); 
		  String query = "SELECT description FROM schedule where date ='" + request.getParameter("show")+"'";
		  rs = stmt.executeQuery(query);
		  
		  while(rs.next()){
		  	%>
			<script>
		  	alert(<%=rs.getString(2)%>);
		  	</script>
			<meta http-equiv=refresh content="0;url=OutputSchedule.jsp">
			<%
		  }
		  
		  rs.close();
		  stmt.close();
		  conn.close();
		}
		  

		  catch(Exception e){
		   	out.println( e );
		  }
 %>
