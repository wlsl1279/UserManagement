<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 처리</title>
</head>

<body>
<%
session.setMaxInactiveInterval(100 * 60); // 초 단위
	String idstore = request.getParameter("idcheck");

	Connection conn = null;
	Statement stmt  = null;
	
	String url = "jdbc:mysql://localhost:3306/sakila";        
	String dbuser = "root";
	String dbpass = "630910han";

	String userid = request.getParameter("id");
	String userpassword = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,dbuser,dbpass);
	stmt = conn.createStatement();
	
	String strSQL = "SELECT * FROM information WHERE id='" + userid + "' AND password='" + userpassword + "'";
	
	ResultSet rs = stmt.executeQuery(strSQL);
	
	Boolean isLogin = false;
	
	while(rs.next()) {	// rs.next가 true이면 정보가 있다는 뜻
		isLogin = true;
	}
	
	Cookie cookie = new Cookie("id", userid);
	if(idstore !=null){
		cookie.setMaxAge(60*60*24*30);
		response.addCookie(cookie);
	}else{
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
	
	if(isLogin){
		
		session.setAttribute("userID", userid); 
		session.setAttribute("userPassword",userpassword);
%>
		<jsp:forward page="/UserIndex.jsp"/>
<%
	}

	else {
       //아닐 경우
%>
		<script> alert("로그인 실패"); history.go(-1); </script> <%            
	}
%>
</body>
</html>