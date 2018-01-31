<html>
<head>
<title>Shopaholic Stop</title>
<link rel="icon" href="images/logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css"> 
<script  type="text/javascript" src="login.js"></script>
</head>
<body>
	<header>
		<div class="main"  >
			<div class="navbar">
				<a href="registration.html">Register</a> &nbsp &nbsp
				<a href="login.html">Login</a>&nbsp &nbsp
					<a href="Forgot.jsp">Forgot your password?</a> &nbsp &nbsp
				<a href="" style="margin-right:20px">+918143656203(Mr.Rajesh)</a>
			</div>
			<span><a href="home.html"><img src="images/logo.jpg" alt="Rs Shopaholic Stop" width="100px" height="100px" style="float:left; margin-left:50px; margin-top:10px;" ></span></a>
			<div class="name">
				<span style="margin-left:50px"><strong>Shopaholic Stop</strong></span>
			</div>
			<input type="text" name="search" placeholder="Type your Brand to shop">
		</div>
		<center>
		<ul>
			<li><a class="menu-bar-margin" href="home.html">Home</a></li>
			<li><a href="men.html">Men</a></li>
			<li><a href="women.html">Women</a></li>
			<li><a href="children.html">Children</a></li>
			<li><a href="electronics.html">Electronics</a></li>
			<li><a href="furniture.html">Furniture</a></li>
			<li><a href="decoratory.html">Decoratory</a></li>
			<li><a href="kitchen.html">Kitchen Utensils</a></li>
		</ul>
	</center>
	</header>
<div id="form">
	<div style=" margin-top:200px; color:#581845">
			<center><h2>
			
			! You are Successfully Logged Out of <strong>Shopaholic Stop</strong></h2><br>
			<%                                      
            HttpSession sess=request.getSession();  
            session.invalidate();                
            out.close();  
 			 %>
			
		
	</form>
</div>
</div>

<footer style="margin-top:160px;" >
<center>
<span>
<img src="images/logo.jpg" width="50px" height="50px"> 
</span>&nbsp 
<br>Copyright@Shopaholic Reserved 2017
</center>
</footer>
</body>
</html>