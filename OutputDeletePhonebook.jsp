<%@ page  contentType="text/html;charset=euc-kr" 
         import="java.sql.DriverManager,
                    java.sql.Connection,
                    java.sql.Statement,
                    java.sql.ResultSet,
                    java.sql.SQLException" %>

<link rel=stylesheet href="style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>software engineering</title>
</head>


<%

  response.setContentType("text/html;charset=euc-kr;");
   request.setCharacterEncoding("euc-kr");     //charset, Encoding 설정

  Class.forName("com.mysql.jdbc.Driver");    // load the drive
   String DB_URL = 
           "jdbc:mysql://localhost:3306/sakila";
                  // 주의 : test by changing mydb to name that you make

  String DB_USER = "root";
  String DB_PASSWORD= "!asdf1234";

  Connection conn= null;
  Statement stmt = null;
  ResultSet rs   = null;

 
   try {
       conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
       stmt = conn.createStatement();

       String query = "SELECT name, number FROM phonebook";
       rs = stmt.executeQuery(query);
       
      
       
       %>
<div class = "login-wrap">
  <h2>PhonebookList</h2>  
   <div class="form">
   
   
 <form action="DeletePhonebook.jsp" method="post">
 <table border="1" cellspacing="0">
 <tr>
 <td>Name</td>
 <td>number</td>
 <th>비고</th>
 </tr>
<%
if(!rs.next()){
    %>
    <script>
    alert("저장된 주소록이 없습니다");
    history.go(-1);
    </script>
    
    <%
 }
 rs.beforeFirst();
 while(rs.next()) { //rs 를 통해 테이블 객체들의 필드값을 넘겨볼 수 있다.
 %>
<tr>
 <td><%=rs.getString(1)%></td>
 <td><%=rs.getString(2)%></td>

 <td><a href="DeletePhonebook.jsp?del=<%=rs.getString(1)%>">삭제</a>
 </td>
 </tr>
<%
     } // end while
%></table>
 </form>
 </div>
</div>
 <%
   rs.close();        // ResultSet exit
   stmt.close();     // Statement exit
   conn.close();    // Connection exit
}
 catch (SQLException e) {
       out.println("err:"+e.toString());
 } 
%>
