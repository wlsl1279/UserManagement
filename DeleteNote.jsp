<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>


<%
  request.setCharacterEncoding("utf-8");
 String date = request.getParameter("del");

 try{
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3306/sakila";
  Connection con = DriverManager.getConnection(url,"root","!asdf1234");
  Statement stat = con.createStatement(); 

  String query = "DELETE FROM note where noteContent ='" + request.getParameter("del")+"'";
  //쿼리문 전
  stat.executeUpdate(query); //return 1.
   stat.close();
   con.close();%>
   
   <script>
   alert("삭제되었습니다.");
   location.href="OutputNote.jsp";
   </script>
    
    
   
   
   <% 
   
  }

   catch(Exception e){
   out.println( e );
  }
 %>
 
 
