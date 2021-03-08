<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"],input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
body{
   background-image:url("blood_drop_search.gif");
   background-size:600px,300px;
   background-repeat:repeat;
  background-attachment:fixed;
}

</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
   <h1 style="color:black ;text-decoration:underline;"> Blood Bank Management System</h1>
  
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>


<body>
  <br>
 <center><font color="White" size="5 "><u>Enter Your Details To Request For Blood</u></font></center>
 <br>
 <br>
 <br>
 <br>
 
 <form action="indexFormAction.jsp" method="post">
 <center>
 <u>Enter Your Name</u>
 <input type="text" name="name" placeholder="Enter Your Name"  required>
 <u>Enter Mobile Number</u>
 <input type="number" name="mobno" placeholder="Enter Mobile Number"  required><br><br>
 <u>Enter Email Address</u>
 <input type="mail" name="email" placeholder="Enter Email Address" required>
 <u>Enter Blood Group</u>
 <input type="text" name="bloodgr" placeholder="Enter Blood Group" required>
 <br>
 <br>
 <br>
 <center><button class="button1"><span>Submit</span></button></center>
 </center>
 </form>
 <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <center><font color="white" size="5">Form Submitted Successfully. You Will get notified within 24 Hours.</font></center>
  <% 
  }
  %>
  <%
  if("invalid".equals(msg)){
	  %>
	  <center><font color="white" size="5">Invalid Data ,Try Again</font></center>
  <% 
  }
  %>
  
 
</div>
</div>


</body>
</html>

