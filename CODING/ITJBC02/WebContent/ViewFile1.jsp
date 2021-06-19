<!DOCTYPE html>

<html lang="en">
<!--<![endif]-->
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Database.Database;" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Multipager Template- Travelic </title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style>
table {
    width:100%;
    margin-top: 70px;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
    </head>
    
<body>
         <div class="navbar navbar-inverse navbar-fixed-top">
       <%
     String email=request.getSession().getAttribute("email").toString();  
       
       
       System.out.println("email---------"+email);
       
       
       %>
       
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"></a>
            </div>
             <div class="navbar-collapse collapse">
                 <ul class="nav navbar-nav navbar-right">
                 <!--    <li><a href="index.jsp">HOME</a></li>-->
                    <li><a href="fileupload.jsp">FILEUPLOAD</a></li>
                     <li><a href="userinbox.jsp">INBOX</a></li> 
                    <li><a href="usercloudview.jsp">CLOUD</a></li>
                    <li><a href="index.jsp">LOGOUT</a></li>
                </ul>
            </div> 
           
        </div>
    </div>
 
    
  <br>
  
  <br>
  <br><br>
<div class="header">
<!-- 	<h1> ADMIN</h1> -->
</div>
<div class="w3-main">
	 
</div>


<table id="t01" style=" margin-top: 30px;">

<h1 style="font-size: 30px;">CLOUD STORAGE</h1>
  <tr style="font-size: 30px;">
    <th style="text-align: center;">USERNAME</th>
    <th style="text-align: center;">FILENAME</th> 
    <th style="text-align: center;">FILETYPE</th>
     <th style="text-align: center;">FILESIZE</th>
      
          <th style="text-align: center;">STATUS</th>
     
  </tr>
  
  
 

	
	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `itjbco2`.`fileupload`");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   
    	String fileusername=  rs.getString(1); 
    	String filename=  rs.getString(2); 
    	  String filetype=rs.getString(3); 
    	  String filesize= rs.getString(4); 
    	  String filekey=rs.getString(5);
    	  String cspkey=rs.getString(6);
    	   
       %>
	

	
	

     <tr>
     <td style="text-align: center;"><%=fileusername%></td>
      <td style="text-align: center;"><%= filename %></td>
       <td style="text-align: center;"><%=  rs.getString(3) %></td>
        <td style="text-align: center;"><%=  rs.getString(4) %></td>
 
       <td style="text-align: center;"><a href="RequestUser?omail=<%=fileusername%>&&filename=<%=filename%>&&filekey=<%=filekey%>&&umail=<%=email%>&&csp=<%=cspkey%>"><button class="btn btn-success" style="font-family:Castellar">REQUEST</button></a></td>
     </tr>
<%} %>
</table>

    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.min.js"></script>  
     <!-- ISOTOPE SCRIPT   -->
    <script src="assets/plugins/jquery.isotope.min.js"></script>
    <!-- PRETTY PHOTO SCRIPT   -->
    <script src="assets/plugins/jquery.prettyPhoto.js"></script>    
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script>$(document).ready(function(c) {
		$('.alert-close').on('click', function(c){
			$('.main-agile').fadeOut('slow', function(c){
				$('.main-agile').remove();
			});
		});	  
	});
	</script>							
		
	</script>
</body>
</html>
