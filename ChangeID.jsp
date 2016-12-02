<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>회원 수정 폼</title>
<link rel = "stylesheet" href = "style.css">
</head>
<body>
<header id="hea">
       <hgroup id="title">
         <img src = "image\usermanagement.png"/></a></br></br>
      </hgroup>
</header>
<%
	String sessionID = (String)session.getAttribute("userID");
	String sessionPassword = (String)session.getAttribute("userPassword");
%>
<div class = "login-wrap">
  <h2>Change ID & Password</h2>  
   <div class="form">
<form action="UpdateID.jsp" method="post">

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID<br/>
  <input type="text" name="id" size="15" value="<%=sessionID%>"><br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password<br/>
  <input type="password" name="password" size="10" value="<%=sessionPassword%>"><br/>
  <button type="submit">Change</button>

</form>
</div>
</div>
</body>
</html>
