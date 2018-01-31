<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width" , initial-scale=1.0">
<script src="shopaholic.js"></script>
<title>Shopaholic Stop</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css">
</head>
<body>
	<header>
	<div class="main">
		<div class="navbar">
			<%
				String na = (String) session.getAttribute("user");
			%>
			<div class="dropdown">
				<button class="dropbtn">
					Hi &nbsp &nbsp<%
					out.print(na);
				%>
				</button>
				<div class="dropdown-content">
					<a href="Myaccount.jsp">My Account</a> <a href="Myorders.jsp">My
						Orders</a> <a href="logout.jsp">LogOut</a>
				</div>
			</div>
		</div>
		<span><a href="Userhome.jsp"><img src="images/logo.jpg"
				alt="Rs Shopaholic Stop" width="100px" height="100px"
				style="float: left; margin-left: 50px; margin-top: 10px;"></span></a>
		<div class="name">
			<span style="margin-left: 50px"><strong>Shopaholic Stop</strong></span>
		</div>
		<div class="search">
			<input type="text" name="search" placeholder="Type your Brand to shop">
		</div>
	</div>
	<center>
		<ul>
			<li><a class="menu-bar-margin" href="userhome.jsp">Home</a></li>
			<li><a href="men.html">Men </a></li>
			<li><a href="women.html">Women</a></li>
			<li><a href="children.html">Children</a></li>
			<li><a href="electronics.html">Electronics</a></li>
			<li><a href="furniture.html">Furniture</a></li>
			<li><a href="decoratory.html">Decoratory</a></li>
			<li><a href="kitchen.html">Kitchen Utensils</a></li>
		</ul>
	</center>
	</header>


	<div class="sale">

		<div class="salep">
			<span><a href="usersale1.jsp?id=1">
				<img src="DisplayImage?id=1" width="185px" height="180px"></a></span> <input
				type="button" value="$150" />
		</div>
		<div class="salep">
			<span> <a href="usersale1.jsp?id=2"> 
				<img src="images/sale2.jpg" width="185px" height="180px"> 
				<input	type="button" value="$150" /></a></span>
		</div>
		<div class="salep">
			<span> <a href="usersale1.jsp?id=3"> 
				<img src="images/sale3.jpg" width="185px" height="180px">
			</a>
			</span> <input type="button" value="$150" />
		</div>
		<div class="salep">
			<span><a href="usersale1.jsp?id=4"><img src="images/sale4.jpg"
					width="185px" height="180px"></a> <input type="button"
				value="$150" /></span>
		</div>
		<div class="salep">
			<span><a href="usersale1.jsp?id=5"><img src="images/sale5.jpg"
					width="185px" height="180px"></a></span> <input type="button"
				value="$150" />
		</div>
		<div class="salep">

			<span><a href="usersale1.jsp?id=6"><img src="images/sale6.jpg"
					width="185px" height="180px"></a></span> <input type="button"
				value="$150" />
		</div>
		<div class="salep">
			<span>
				<a href="usersale1.jsp?id=7">	
					<img src="images/sale7.jpg" width="185px" height="180px">
				</a>
			</span> 
			<input type="button"
				value="$150" />
		</div>
	</div>
	<div class="sale1">
		<span>
			<a href="usersale1.jsp?id=8">
				<img src="images/sale8.jpg" width="185px" height="180px">
				<input type="button" value="$150" />
			</a> 
			
		</span>
		<span>
			<a href="usersale1.jsp?id=9">
				<img src="images/sale9.jpg" width="185px" height="180px">
				<input type="button" value="$150" />
			</a> 
			
		</span>
		<span>
			<a href="usersale1.jsp?id=10">
				<img src="images/sale10.jpg" width="185px" height="180px">
				<input type="button" value="$150" />
			</a> 
			
		</span> 
		<span>
			<a href="usersale1.jsp?id=11">	
			<img src="images/sale11.jpg" width="185px" height="180px"> 
			<input type="button" value="$150" />
			</a>
		</span> 
		<span>
			<a href="usersale1.jsp?id=12">	
			<img src="images/sale12.jpg" width="185px" height="180px"> 
			<input type="button" value="$150" />
			</a>
		</span> 
		<span>
			<a href="sale1.jsp?id=13">	
				<img src="images/sale14.jpg" width="185px" height="180px">
				<input	type="button" value="$150" />
			</a>
		</span> 
		<span>
			<a href="sale1.jsp?id=14">	
			<img src="images/sale17.jpg" width="185px" height="180px"> 
			<input	type="button" value="$150" />
			</a>
		</span>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>
