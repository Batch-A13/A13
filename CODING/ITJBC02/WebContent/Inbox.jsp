<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
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






 <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Multipager Template- Travelic </title>
    <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--ANIMATED FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
     <!--PRETTYPHOTO MAIN STYLE -->
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
<!--//online-fonts -->


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
     <!-- NAV SECTION -->
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
                    <li><a href="FileUpload.jsp">FILEUPLOAD</a></li>
                     <li><a href="RequestFileowner.jsp">INBOX</a></li> 
                     
                    <li><a href="Index.jsp">LOGOUT</a></li>
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
    <th style="text-align: center;">FILENAME</th>
    <th style="text-align: center;">FILETYPE</th> 
    <th style="text-align: center;">FILESIZE</th>
     <th style="text-align: center;">OMAIL</th>
      <th style="text-align: center;">UMAIL</th>
          <th style="text-align: center;">PHASH</th>
      <th style="text-align: center;">AHASH</th>
  </tr>
  
  
 

	
	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT f.filename,f.filesize,f.filetype,t.filename,t.omail,t.umail,t.prehash,t.afterhash FROM `itjbco2`.`fileupload` f ,`itjbco2`.`thirdaccept` t where t.umail='"+email+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   
    
    	String filename=  rs.getString(1); 
    	 String filetype=rs.getString(3); 
    	String filesize=rs.getString(2); 
    	 
    	  String omail= rs.getString(5); 
    	  String umail=rs.getString(6);
    	  String prehash=rs.getString(7);
    	  String afterhash=rs.getString(8);
       %>
 
     <tr>
     <td style="text-align: center;"><%=filename%></td>
       <td style="text-align: center;"><%=  filetype %></td>
             <td style="text-align: center;"><%= filesize %></td>
        <td style="text-align: center;"><%=  omail %></td>
        <td style="text-align: center;"><%=  umail %></td>
        <td style="text-align: center;"><%=  prehash %></td>
          <td style="text-align: center;"><%=  afterhash %></td>
       <%-- <td style="text-align: center;"><a href="Requstupload.jsp?file=<%=filename %>&&usermail=<%=email%> "><button class="btn btn-success">Request</button></a></td> --%>
     </tr>






<%} %>
</table>
					<!-- END PORTFOLIO SECTION-->
  
                  
         

    <!--FOOTER SECTION -->
   <!--  <div id="footer">
        2014 www.yourdomain.com | All Right Reserved  
         
    </div> -->
    <!-- END FOOTER SECTION -->

    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
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
