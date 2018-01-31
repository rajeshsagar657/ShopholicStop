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
<link rel="stylesheet" href="rs.css"> 
</head>
<body>
	<header>
		<div class="main"  >
			<div class="navbar">
			<%String na = (String) session.getAttribute("user");
			%>
			<div class="dropdown">
  					<button class="dropbtn">Hi  &nbsp &nbsp<% out.print(na);%></button>
  					<div class="dropdown-content">
   						 <a href="Myaccount.jsp">My Account</a>
    						<a href="Myorders.jsp">My Orders</a>
    						<a href="logout.jsp">LogOut</a>
 					 </div>
			</div>
		</div>
			<span><a href="home.html"><img src="images/logo.jpg" alt="Rs Shopaholic Stop" width="100px" height="100px" style="float:left; margin-left:50px; margin-top:10px;" ></span></a>
			<div class="name">
				<span style="margin-left:50px"><strong>Shopaholic Stop</strong></span>
			</div>
			<div  class="search" ><input type="text" name="search" placeholder="Type your Brand to shop" ></div>
		</div>
		<center>
		<ul>
			<li><a class="menu-bar-margin" href="userhome.jsp">Home</a></li>
			<li><a href="men.html">Men </a></li>
			<li><a href="women.html">Women</a></li>
			<li><a href="children.jsp">Children</a></li>
			<li><a href="electronics.html">Electronics</a></li>
			<li><a href="furniture.html">Furniture</a></li>
			<li><a href="decoratory.html">Decoratory</a></li>
			<li><a href="kitchen.html">Kitchen Utensils</a></li>
		</ul>
		</center>
	</header>
	
	</body></html>