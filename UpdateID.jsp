<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<html>
<head><title>멤버 수정 처리</title>
<link rel = "stylesheet" href = "style.css"></head>
<body>
<header id="hea">
       <hgroup id="title">
         <img src = "image\usermanagement.png"/></a></br></br>
      </hgroup>
<%
   request.setCharacterEncoding("utf-8");
      
   Connection conn = null;
   PreparedStatement pstmt = null;
      
   String url = "jdbc:mysql://localhost:3306/sakila";        
   String dbuser = "root";                                       
   String dbpassword = "630910han"; 
      
   String formId = (String)request.getParameter("id");
   String sessionID = (String)session.getAttribute("userID").toString();
   
   if(formId.equals(sessionID)) {
       %> <script> alert("기존 정보와 동일합니다."); history.go(-1); </script> <%            
   } 
   try{
      Class.forName("com.mysql.jdbc.Driver");            
      conn=DriverManager.getConnection(url,dbuser,dbpassword);
      String sql = "UPDATE information SET id=? WHERE no=1"; 
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1,formId);
      pstmt.executeUpdate();
      %>
      <div class = "login-wrap"> 
      <H2>change completed</H2><br/>
      <div class="form">
     <%
      if(sessionID != null){
         %>
         <button><a href="LoginIndex.jsp">back to Login</a></button>
         <%
      }
   }catch(SQLException e){
      out.println("에러: "+e);   
   }finally{
      if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){} 
      if(conn != null) try{conn.close();}catch(SQLException sqle){}   
   	} 

%>
</div>
</div>
</body>
</html>
