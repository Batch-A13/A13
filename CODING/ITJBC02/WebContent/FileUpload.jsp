<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.http.HttpSession" %>  
      
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css3/bootstrap.min.css">
        <script type="text/javascript" src="js3/jquery.min.js"></script>
        <script type="text/javascript" src="js3/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>File Upload</title>
        <style type="text/css">
             body {    
                background-image: url("images/cloud3.jpeg");
                background-repeat: no-repeat;
                 background-size: 100% 800px;
                }
            h1,label
            {
                color: white;
            }
        </style>
</head>
<body>
<div class="container-fluid" style="background-color: silver">  
             <div class="container" style="margin-top: 20px;">
                 <h1 style="color: royalblue"> A Blockchain-enabled Deduplicatable Data Auditing Mechanism for Network Storage Services </h1>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> HOME</a></li>        
        <li class="active"><a href="fileupload.jsp"><span class="glyphicon glyphicon-cloud-upload"></span> UPLOAD </a></li>       
        <li class="active"  ><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> LOGOUT  </a></li>        
      </ul>       
    </div>
  </div>
</nav>
<% Random r=new Random();
	
	int f=r.nextInt(100000);
	String filekey= ""+f;
	
	%>
	<%
		Random r1=new Random(); 

		 String key2="ABCDE12345";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>
		 
		 <%
      String email=request.getSession().getAttribute("email").toString();  
       
       
       System.out.println("email: "+email);  
       
       
       %>

 </div>
    </div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
        <center>
            <h1>UPLOAD FILE</h1>
            <form action="FileUpload" method="post" enctype="multipart/form-data">
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">Private key:</label>
    <div class="col-sm-7">
      <input type="text"  name="private" class="form-control form-control-sm" placeholder="Private Key" value="<%=filekey %>" readonly="readonly">
    </div>
  </div>
                
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">Trapdoor key:</label>
    <div class="col-sm-7">
      <input type="text" name="pass" class="form-control form-control-sm" placeholder="Trapdoor key" value="<%=t6 %>" readonly="readonly">
    </div>
  </div>
                
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">Upload Your File:</label>
    <div class="col-sm-7">
      <input type="file" name="pass" class="form-control form-control-sm" accept="application/pdf">
    </div>
  </div>
                
           <input type="submit" class="btn btn-success" value="Upload">               
</form>
        </center>
        </div>
        <div class="col-sm-4"></div>
</body>
</html>