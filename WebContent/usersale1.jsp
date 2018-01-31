<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopaholic Stop</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css"> 
<script src="login.js"></script>
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
			<span><a href="userhome.jsp"><img src="images/logo.jpg" alt="Rs Shopaholic Stop" width="100px" height="100px" style="float:left; margin-left:50px; margin-top:10px;" ></span></a>
			<div class="name">
				<span style="margin-left:50px"><strong>Shopaholic Stop</strong></span>
			</div>
			<input type="text" name="search" placeholder="Type your Brand to shop">
		</div>
		<center>
		<ul>
			<li><a class="menu-bar-margin" href="userhome.jsp">Home</a></li>
			<li><a href="men.html">Men</a></li>
			<li><a href="women.html">Women</a></li>
			<li><a href="children.jsp">Children</a></li>
			<li><a href="electronics.html">Electronics</a></li>
			<li><a href="furniture.html">Furniture</a></li>
			<li><a href="decoratory.html">Decoratory</a></li>
			<li><a href="kitchen.html">Kitchen Utensils</a></li>
		</ul>
	</center>
	</header>
<div class="form" style=" margin-top:200px; color:#581845 ; display:flex" >
<%String image= request.getParameter("id");%>
<iframe  name="ifs" src="DisplayImage?id=<%= image %>" style="width:550px; height:450px" ><input type="hidden" name="image" value="<%=image%>" /></iframe>
	<div class="product" style=" margin-left:100px; color:#581845 ; display:inline-block">
			<h2>OnePlus 5 (Slate Gray 8GB RAM + 128GB memory)</h2>
			<div style="margin-left:20px;display:flex">
			<h4>Price:</h4><h1>$1,500</h1>
			
			<form action="bynow.jsp" method="post">
			<input type="submit" value="ByNow" name="bynow">
			<input type="submit" value="Add to WishList" name="add">
			</form>
			</div>
			<div>->>20MP+16MP primary dual camera and 16MP front facing camera<br>
-->>13.97 centimeters (5.5-inch) capacitive touchscreen FHD display with 1920 x 1080 pixels resolution.<br> -->>Cover Glass:2.5D Corning Gorilla Glass 5<br>
-->>Android v7.1.1 Nougat OS with Qualcomm Snapdragon 835 octa core processor<br>-->>
8 GB RAM, 128 GB internal memory and dual nano SIM dual-standby (4G+4G)<br>-->>
3300mAH lithium Polymer battery with Dash Charge technology<br>-->>
Fingerprint scanner, all-metal unibody and NFC enabled<br>-->>
1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</div>
			
			 
	</div>
	
	</div>
<p id="vlogin"></p>
<footer style="margin-top:371px" >
<center><span><img src="images/logo.jpg" width="50px" height="50px"> </span>&nbsp <br>Copyright@Shopaholic Reserved 2017</center>
</footer>
</body>
</html>