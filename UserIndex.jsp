<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
.changesImgOnHover {
	display: inline-block; /* or just block */
	background-image: url('image/phonebook.png');//바뀌는 이미지
	no-repeat;
}

.changesImgOnHover:hover img {
	visibility: hidden;
}

.changesImgOnHover2 {
	display: inline-block; /* or just block */
	background-image: url('image/schedule.png');
	no-repeat;
}

.changesImgOnHover2:hover img {
	visibility: hidden;
}

.changesImgOnHover3 {
	display: inline-block; /* or just block */
	background-image: url('image/note.png');
	no-repeat;
}

.changesImgOnHover3:hover img {
	visibility: hidden;
}


</style>
<link rel=stylesheet href="main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>software engineering</title>
</head>
<body>

	<header id="hea"> <hgroup id="title">
	<img src = "image\usermanagement.png"/></a>
	</br>
	</br>
	</hgroup> 
	<nav id="nav">
	<ul>
		<li><a href="ChangeID.jsp">Change ID & Password</a></li>
		<li><a href="Logout.jsp">Logout</a></li>
	</ul>
	</nav> </header>
	<div id="content">

		<table align = "center" border="0" cellspacing="10" cellpadding="5">

			<tr>

				<td align="center" valign="top"><a href="phonebook.jsp"
					class="changesImgOnHover"><img id="img" src="image\blackphonebook.jpg"//바뀌기전
						width="330" height="300" border="10" /></a>
						<br /> Phone book<br />
						
				</td>

				<td align="center" valign="top"><a href="schedule.jsp"
					class="changesImgOnHover2"><img src="image\blackschedule.jpg" 
						width="330" height="300" border="10" /></a>
						<br /> Schedule<br />
						
				</td>

				<td align="center" valign="top"><a href="note.jsp"
					class="changesImgOnHover3"><img src="image\blacknote.jpg"
						width="330" height="300" border="10" /></a>
						<br /> Note<br />
						
				</td>

			</tr>

		</table>
	</div>

</body>

</html>