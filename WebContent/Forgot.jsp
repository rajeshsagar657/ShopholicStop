<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="images/logo.jpg" type="image/x-icon">

</head>
<body>
<%@ include file="header.jsp" %>
<div class="regist" style="margin-top:220px"><center>
<form action="ForgotPassword" method="post">
 <b>Enter your Email Address to get your password to your mail</b> <input type="text" name="Email" />
  <br><input type="submit" value="Send mail"/> </form></center></div>
 <%@ include file="footer.jsp" %>
</body>
</html>