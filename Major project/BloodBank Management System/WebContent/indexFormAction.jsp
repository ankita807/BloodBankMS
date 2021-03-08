<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String name=request.getParameter("name");
String mobno=request.getParameter("mobno");
String email=request.getParameter("email");
String bloodgr=request.getParameter("bloodgr");
String status="pending";

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobno);
	ps.setString(3,email);
	ps.setString(4,bloodgr);
	ps.setString(5,status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");

}
catch(Exception e){
	response.sendRedirect("index.jsp?msg=invalid");

}


%>