<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>


<%
  request.setCharacterEncoding("utf-8");
 String name = request.getParameter("del");
 ResultSet rs = null;

 try{
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3306/sakila";
  Connection con = DriverManager.getConnection(url,"root","wz789333");
  Statement stat = con.createStatement(); 
  String nullcheck="SELECT name FROM phonebook";

  String query = "DELETE FROM phonebook where name ='" + request.getParameter("del")+"'";
  //쿼리문 전
  rs= stat.executeQuery(nullcheck);
	while(rs.next()){
      if ( rs.getString(1) == null ){
         %>
         <script> alert("저장된 주소록이 없습니다."); </script>
         <meta http-equiv=refresh content="0;url=OutputDeletePhonebook.jsp">
         <%
         
      }else{
         stat.executeUpdate(query);
         %>
         <script>alert("삭제되었습니다.");
         location.href="OutputDeletePhonebook.jsp";
         </script>
         <%
         rs.close();
         stat.close();
          con.close();
          response.sendRedirect("OutputDeletePhonebook.jsp"); 
      }
	}   
  
  stat.executeUpdate(query); //return 1.
   stat.close();
   con.close();%>
    
   <% 
   
  }
  catch(Exception e){
   out.println( e );
  }
 %>
 
 
