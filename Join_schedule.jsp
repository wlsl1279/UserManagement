<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8"); //Set encoding
String date = request.getParameter("date");
String description = request.getParameter("description");

try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/sakila";
	Connection con = DriverManager.getConnection(url,"root","wz789333");
	Statement stat = con.createStatement();
	String query = "INSERT INTO schedule(date, description) VALUES('"+date+"','"+description+"')";

    stat.executeUpdate(query);
    stat.close();
    con.close();
  }
  catch(Exception e){
   out.println( e );
  }
  response.sendRedirect("ScheduleIndex.jsp"); 
%>

