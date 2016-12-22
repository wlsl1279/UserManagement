<%@ page contentType="text/html;charset=euc-kr"
	import="java.sql.DriverManager,
                    java.sql.Connection,
                    java.sql.Statement,
                    java.sql.ResultSet,
                    java.sql.SQLException"%>

<link rel=stylesheet href="style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>software engineering</title>
</head>

<%
	response.setContentType("text/html;charset=euc-kr;");
	request.setCharacterEncoding("euc-kr");

	Class.forName("com.mysql.jdbc.Driver");
	String DB_URL = "jdbc:mysql://localhost:3306/sakila";
	// ���� : test by changing mydb to name that you make

	String DB_USER = "root";
	String DB_PASSWORD = "wz789333";

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	try {
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		stmt = conn.createStatement();

		String query = "SELECT name,number FROM phonebook";
		rs = stmt.executeQuery(query);
%>

<div class="login-wrap">
	<h2>PhonebookList</h2>
	<div class="form">

		<form action="ViewPhonebook.jsp" method="post">
			<table border="1" cellspacing="0">
				<tr>
					<td>name</td>
					<td>number</td>
					<th>���</th>
				</tr>
				<%
					while (rs.next()) { //rs �� ���� ���̺� ��ü���� �ʵ尪�� �Ѱܺ� �� �ִ�.
				%>
					<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>

					<td><a href="ViewPhonebook.jsp?show=<%=rs.getString(1)%>">����</a>
					</td>
				</tr>

				<%
					}
				%>
			</table>
		</form>
	</div>
</div>
<%
	rs.close(); // ResultSet exit
		stmt.close(); // Statement exit
		conn.close(); // Connection exit
	} catch (SQLException e) {
		out.println("err:" + e.toString());
	}
%>