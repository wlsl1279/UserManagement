<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8"); //Set encoding
String name = request.getParameter("name");
String number = request.getParameter("number");
ResultSet rs = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/sakila";
	Connection con = DriverManager.getConnection(url,"root","wz789333");
	Statement stat = con.createStatement();
	String query = "INSERT INTO phonebook(name, number) VALUES('"+name+"','"+number+"')";
	String queryForDoubleCheck = "SELECT name, number FROM phonebook";
	rs = stat.executeQuery(queryForDoubleCheck);
	while (rs.next()){
		if ( rs.getString(1).equals(name) && rs.getString(2).equals(number)){
			%>
			<script> alert("이미 저장된 주소록입니다."); </script>
			<meta http-equiv=refresh content="0;url=CreatePhonebook.jsp">
			<%
			
		}else{
			stat.executeUpdate(query);
			rs.close();
		    stat.close();
		    con.close();
		    response.sendRedirect("ViewPhonebook.jsp"); 
		}
	}
}catch(Exception e){
   out.println( e );
  }
%>

