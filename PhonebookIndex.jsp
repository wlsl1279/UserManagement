<style>
.changesImgOnHover {
   display: inline-block; /* or just block */
   background-image: url('image/plus.jpg'); 
   no-repeat;
}

.changesImgOnHover:hover img {
   visibility: hidden;
}

.changesImgOnHover2 {
   display: inline-block; /* or just block */
   background-image: url('image/view.jpg');
   no-repeat;
}

.changesImgOnHover2:hover img {
   visibility: hidden;
}

.changesImgOnHover3 {
   display: inline-block; /* or just block */
   background-image: url('image/minus.jpg');
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
      <li><a href="Logout.jsp">Logout</a></li>
   </ul>
   </nav> </header>
   <div id="content">

      <table align = "center" border="0" cellspacing="10" cellpadding="5">

         <tr>

            <td align="center" valign="top"><a href="CreatePhonebook.jsp"
               class="changesImgOnHover"><img id="img" src="image\blackplus.jpg"
                  width="300" height="300" border="10" /></a>
                  <br /> CreatePhonebook<br />
                  
            </td>

            <td align="center" valign="top"><a href="ViewPhonebook.jsp"
               class="changesImgOnHover2"><img src="image\blackview.jpg" 
                  width="300" height="300" border="10" /></a>
                  <br /> ViewPhonebook<br />
                  
            </td>

            <td align="center" valign="top"><a href="DeletePhonebook.jsp"
               class="changesImgOnHover3"><img src="image\blackminus.jpg"
                  width="300" height="300" border="10" /></a>
                  <br /> DeletePhonebook<br />
                  
            </td>

         </tr>

      </table>
   </div>

</body>

</html>