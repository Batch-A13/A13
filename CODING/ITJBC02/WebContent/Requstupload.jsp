<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <script src="js5/jquery.js"></script>
  <script src="js5/bootstrap.js"></script>
<title>comment</title>
<style>
   body, html {
  height: 100%;
  margin: 0;
}

.bg {
 
  background-image: url("images/mees.jpg");

   
  height: 100%; 

  
  background-position: center;
  background-repeat:  repeat;
  background-size: cover;
}  
</style>
</head>
<body class="bg">
   

  <%
  String id=request.getParameter("fileid");
	System.out.println("id:"+id);

	String file=request.getParameter("file");
	System.out.println("file:"+file);

  
	String usermail=request.getParameter("usermail");
	System.out.println("usermail:"+usermail);

	 
	

  %>    
<div class="container" style="margin-top: 70px">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h3 style="text-align: center; ">Message</h3>
                <div class="panel panel-primary" style="max-height:100% ; max-height: 100%;">                
    <div class="panel-heading" style="text-align: center; ">MESSAGE BOX</div>
    <div class="panel-body bg-info">
        <form action="Ownerfilereq" method="post">
            <div class="form-group">
            <label for="name" class="col-form-label">MAIL ID</label>
            <input type="text" name="omail" value="<%=usermail %>" class="form-control" required="" readonly>
          </div>
            <div class="form-group">
            <label for="email" class="col-form-label">FILE NAME</label>
            <input type="text" name="file" value="<%=file %>" class="form-control" required="" readonly>
          </div>
    
           <div class="form-group">
       
            <input type="hidden" name="fileid" value="<%=id%> " class="form-control" required="">
          </div>
 
            <div class="panel panel-success">
            <div class="panel-heading">Type message</div>
                <div class="panel-body bg-success">
                    <div class="form-group">
    <label for="problem description"></label>
    <textarea class="form-control" name="mess" rows="5" required=""></textarea>
  </div>
                    
        <div class="form-group">
     <input type="submit" value="Send" id="sub" class="btn btn-primary">
    </div>
                </div>
            </div>
        </form>
                    
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>        
    
</body>
</html>