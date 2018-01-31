<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholic Stop</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css"> 
</head>
<body>
  <%@ page import="java.util.Date" %> <%--this is an example for import page directive --%>
  <%@ page import="java.sql.*" %>
  <%@ page import="java.text.SimpleDateFormat" %>
  <%--this is an example for scriplet  --%>
<% String na = (String) session.getAttribute("user");
 			  String type="mobile";
			  String model="13AS2DERS34";
			  int price=1500;
			  String name= request.getParameter("uname");
			  String add=request.getParameter("add");
			  String bynow=request.getParameter("bynow");
			  
			  
			  Date today=new Date();
			  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			  
			  String d=formatter.format(today);	  
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=(Connection) DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false","root","16283");  
				PreparedStatement ps=((java.sql.Connection) con).prepareStatement("insert into product values(?,?,?,?,?)");  
				  
				ps.setString(1,type);  
				ps.setString(2,model);  
				ps.setInt(3,price);
				ps.setString(4, na);
				ps.setString(5,d);
				int i=ps.executeUpdate();
				if(i>0)  { 
					 
					  response.sendRedirect("added.jsp");
						} 
				else
				{
					
				}
			
				
				
				 %> 

</body>
</html>