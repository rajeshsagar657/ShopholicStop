<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholic Stop</title>
<link rel="icon" href="logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css"> 
<script src="login.js"></script>
</head>
<body>
<%@ include file="UserHead.jsp" %>
<div id="form">
	<div style=" margin-top:200px; color:#581845">
			<center><h2>Welcome <%
			String naa = (String) session.getAttribute("user");
			out.print("  " +naa); %> 
			! You are Successfully Logged in <strong>Shopaholic Stop</strong></h2><br>
			
				
           <a href="userhome.jsp"> ContinueShopping </a></strong></center>
		</div>
	</div>
	
	
<p id="vlogin"></p>
<footer style="margin-top:371px" >
<center><span><img src="images/logo.jpg" width="50px" height="50px"> </span>&nbsp <br>Copyright@Shopaholic Reserved 2017</center>
</footer>
</body>
</html>
