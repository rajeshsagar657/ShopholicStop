
 <%@ include file="header.jsp" %>
 
 

<div class="form" style=" margin-top:200px; color:#581845 ; display:flex" >
<% String imageId=request.getParameter("id");%>
<img  name="ifs" src="DisplayImage?id= <%=imageId%>" style="width:400px; height:450px" >
	<div class="product" style=" margin-left:100px; color:#581845 ; display:inline-block">
			<h2>OnePlus 5 (Slate Gray 8GB RAM + 128GB memory)</h2>
			<div style="margin-left:20px;display:flex">
			<h4>Price:</h4><h1>$1,500</h1>
			
			<form action="bynow" method="post"><input type="submit" value="ByNow"><input type="submit" value="Add to Cart"></form>
			</div>
			<div style="fontsize:20px"> <iframe class="desc" frameBorder="0" src="DisplayDesc?id=<%=imageId %>" width="800px" height="300px" ></iframe></div>
			
			 
	</div>
	
	</div>
<%@ include file="footer.jsp" %>
</body>
</html>