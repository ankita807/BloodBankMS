<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

body{
   background-image:url("backgr.png");
   background-size:1100px,900px;
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
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
<br>
<%
  String msg=request.getParameter("msg");
  if("invalid".equals(msg)){
	  %>
	  <center><font color="red" size="5">Invalid Username / Password</font></center>
  <% 
  }
  %>
<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h2>User Name</h2></center>
<input type="text" placeholder="Enter User Name" name="username" required>
<center><h2>Password</h2></center>
<input type="password" placeholder="Enter password" name="password" required>
<center><button type="submit" class="button" >Submit</button></center>

</div>
</form>		
</div>
</body>
</html>
