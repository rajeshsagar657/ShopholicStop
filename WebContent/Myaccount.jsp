<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width", initial-scale=1.0">
<script src="shopaholic.js"></script>
<title>Shopaholic Stop</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon">
</head>
<body style="margin-top:300px">
<%@ include file="UserHead.jsp" %>
<%@ page import="java.sql.*" %>
<%

try{
	String user = (String) session.getAttribute("user");
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false","root","16283"); 
	  
	PreparedStatement ps=con.prepareStatement("select * from newuser where firstname=?"); 
	ps.setString(1,user);
	
	out.print("<center> <table width=50%  border=8 font-size:20px >");
	
	ResultSet rs=ps.executeQuery();
	
	/* Printing column names */
	ResultSetMetaData rsmd=rs.getMetaData();
	int total=rsmd.getColumnCount();
	out.print("<tr>");
	for(int i=1;i<=total-1;i++)
	{
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
		
	}
	out.print("</tr>");
	
	/* Printing result */
	while(rs.next())
	{
		out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(4)+"</td><td>" +rs.getString(5)+"</td><td>" +rs.getLong(6)+"</td></tr>");
		
	}
	out.print("</table></center>");
	
}catch (Exception e2) {e2.printStackTrace();}

finally{out.close();}
 %>
</body>
</html>