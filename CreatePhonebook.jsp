<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style> 
.A { font-size:30px; }
.B { font-size:20px; }
</style>

<link rel=stylesheet href="main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>software engineering</title>
</head>
<body>

<header id="hea"> <hgroup id="title">
<img src = "image\usermanagement.png"/></a>
</br></br>
</hgroup> 
</header>

<table align = "center" border="0" cellspacing="10" cellpadding="5">
	<div class = "A">
	Create new phonebook</div>
		
	<form action="Join_phonebook.jsp" method="post">
		<br><br><div class = "B">
		<br>Name : 
	    <input type="text" name="name" maxlength="8">
			
		<br>Number : </div>
		<input type="tel" name="number" maxlength="11"><P>
		<br>
	
		<input type="submit" value="Save" onClick="alert('저장되었습니다')">
	</form>
			
	<form action="PhonebookIndex.jsp">
		<button type="submit">Back</button>
	</form>
			
</table>
</body>  
</html>