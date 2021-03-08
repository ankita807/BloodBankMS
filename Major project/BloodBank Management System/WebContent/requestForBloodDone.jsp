<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String mobno=request.getParameter("mobno");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='completed' where mobno=?");
	ps.setString(1,mobno);
	ps.executeUpdate();
	response.sendRedirect("requestForBlood.jsp?msg=valid");

}
catch(Exception e){
	response.sendRedirect("requestForBlood.jsp?msg=invalid");

}
%>