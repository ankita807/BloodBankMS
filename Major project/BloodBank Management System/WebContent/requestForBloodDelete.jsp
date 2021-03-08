<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String mobno=request.getParameter("mobno");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobno='"+mobno+"'");
	response.sendRedirect("requestForBlood.jsp?msg=valid");

}
catch(Exception e){
	response.sendRedirect("requestForBlood.jsp?msg=invalid");

}
%>