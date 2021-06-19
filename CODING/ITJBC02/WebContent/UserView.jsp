<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.Database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!-- webfonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!-- webfonts -->
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/popup.css" rel="stylesheet" type="text/css">
<style type="text/css">
@media (max-width: 740px) {
  html,
  body,
  header,
  .view {
    height: 1000px;
    background : linear-gradient(to right, #c6ffdd, #fbd786, #f7797d); 
  }
}
@media (min-width: 800px) and (max-width: 850px) {
  html,
  body,
  header,
  .view {
    height: 600px;
  }
}
 

 
 </style>

</head>

 <%
		String email=request.getSession().getAttribute("email").toString(); 
		 
		 System.out.println("Gmail Id: "+email);
		 
 
				    
				  
%>
   
   <%		
String count="";
			 Connection d = Database.create();
			 PreparedStatement p = d.prepareStatement("SELECT count(*) FROM `itjbco2`.`thirdaccept` where umail='"+email+"'");
				ResultSet rp = p.executeQuery();
	
				while (rp.next()){
					
					
					  count= rp.getString(1);	
					
					
				
				%>
				
			<%
				}
			
			%>
<body>
<div class="header">
	<div class="container">
		 
		<div class="h_menu4"><!-- start h_menu4 -->
	        <a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="Index.jsp">Home</a></li>
			
					<li><a href="ViewFile1.jsp">View Files</a></li>
					 
					<li><a href="Inbox.jsp">Inbox(<%=count%>)</a></li>
					<li><a href="Download.jsp">Download</a></li>
					 		<li><a href="about1.jsp">View Hash</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
</body>
</html>