<html>
<head>
<title>Shopaholic Stop</title>
<link rel="icon" href="logo.jpg" type="image/x-icon">
<link rel="stylesheet" href="rs.css"> 
<script type="text/javascript" src="registration.js"> </script>
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
	
<%String naa = (String) session.getAttribute("otp");
String fn = (String) session.getAttribute("fn");
String ln = (String) session.getAttribute("ln");
String mobile = (String) session.getAttribute("mobile");
String age = (String) session.getAttribute("age");
String gender = (String) session.getAttribute("gender");
String password= (String) session.getAttribute("password");
String confirm = (String) session.getAttribute("confirm");
String email = (String) session.getAttribute("email");
%>	
<div class= "regist">
<div style="margin-top:200px;color:#581845">
<center>
<h2>Provide your otp to register</h2>
<form action="RegistrationUser" method="post">
<table style="width:100%;margin-left:200px;margin-top:0px;" >
 	<tr>
    <td><label>First name:</label> </td>
	<td><input type="text" name="fn" value="<%=fn%>"></td>
	</tr>
	<tr>
    <td><label>Last name:</label></td> 
	<td><input type="text" name="ln" value="<%=ln%>"><br> </td>
	</tr>
	<tr>
	<td><label>Gender</label></td>
	<td><label>Male</label><input type="radio"  class="gender" name="gender" value="<%=gender%>" id="m">
	<label>Female</label><input type="radio"  class="gender" name="gender" value="<%=gender%>" id="n">
	</td>
	</tr>
	<tr>
			<td><label>Age</label></td>
			<td><input type="text" name="age" value="<%=age%>"></td>	
	<tr>
			<td><label>Mobile Number</label></td>
			<td><input type="number" name="mobile" value="<%=mobile%>" size="10"><br> </td>
	</tr>
	<tr>
			<td><label>E-mail</label></td>
			<td><input type="email" name="email" value="<%=email%>"><br></td>
	</tr>
	<tr>
			<td><label>Password</label></td>
			<td><input type="password" name="password" value="<%=password%>"></td>
	</tr>
	<tr>
	<td><label>Confirm Password</label></td>
	<td><input type="password" name="confirm" value="<%=confirm%>"></td>
	</tr>
	
	<td><label>Enter OTP that sent to your mail </label></td>
	<td><input type="text" name="otp" size="6" required></td>
	<td><input type="hidden" name="confirmotp" value="<%=naa%>"></td>
	</tr>

	
   </table>

<div style="margin-left:570px">
<input type="submit"  value="confirm"></input>
</div>
 </form>
 	
  </center>
</div>
</div>
<footer >
<center><span><img src="images/logo.jpg" width="50px" height="50px"> </span>&nbsp <br>Copyright@Shopaholic Reserved 2017</center>
</footer>
</body>
</html>