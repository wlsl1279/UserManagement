<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8"); //Set encoding
String note = request.getParameter("note");


try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/sakila";
	Connection con = DriverManager.getConnection(url,"root","wz789333");
	Statement stat = con.createStatement();
	String query = "INSERT INTO note(note) VALUES('"+note+"')";

    stat.executeUpdate(query);
    stat.close();
    con.close();
  }
  catch(Exception e){
   out.println( e );
  }
  response.sendRedirect("NoteIndex.jsp"); 
%>

