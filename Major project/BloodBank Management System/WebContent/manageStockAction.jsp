<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String bloodgr=request.getParameter("bloodgr");
String incdec=request.getParameter("incdec");
String units=request.getParameter("units");
int units1=Integer.parseInt(units);
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	if(incdec.equals("inc"))
	{
		st.executeUpdate("update stock set units=units+'"+units1+"' where bloodgr='"+bloodgr+"'");
	}
	else
	{
		st.executeUpdate("update stock set units=units-'"+units1+"' where bloodgr='"+bloodgr+"'");

	}
	response.sendRedirect("manageStock.jsp?msg=valid");


}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("manageStock.jsp?msg=invalid");

}


%>