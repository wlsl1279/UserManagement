<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
</head>

<%
	boolean isIDShow = false;
	String id = null;
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for (int i = 0; i< cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				isIDShow=true;
				id=cookies[i].getValue();	
			}
		}
	}
%>
<body>
	<% 
 	Object obj = application.getAttribute("count"); 
    if (obj == null) {
    	System.out.println(obj + " => sever 최초입니다."); 
    	application.setAttribute("count", 0); 
		obj = application.getAttribute("count"); 
	} 
%>
	<header id="hea"> <hgroup id="title">
	<img src = "image\usermanagement.png"/></a>
	</br>
	</br>
	</hgroup>
	<div class="login-wrap">
		<h2>Login</h2>
		<div class="form">
			<form action="LoginProcess.jsp" method="post">
				<input type="text" placeholder="id" name="id"
					value=<%if(id!=null){%> <%=id%> <%} 
				else {%> <%=""%> <%}%>>

				<input type="password" placeholder="password" name="password" />
				<br />
			
				<br><br><button type="submit">Login</button>
				</form>
				</div>
				</div>
	
</body>
</html>

