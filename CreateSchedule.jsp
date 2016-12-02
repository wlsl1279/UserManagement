<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD><TITLE>Create new schedule</TITLE></HEAD>
<BODY bgcolor=white>
Create new schedule
<FORM action="Join_schedule.jsp" method="post">
	<br>Please write date in the form of 'year-month-day' (ex. 1990-01-01)
	<br>Date:
	<input type="date" name="date"><br>

	Description :    <INPUT type="text" name="description"  maxlength="20"><P>
	<INPUT type="submit" value=" 저 장 ">
</FORM>


</BODY>
</HTML>
