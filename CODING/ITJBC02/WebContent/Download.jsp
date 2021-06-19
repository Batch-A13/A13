<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import=" com.Database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body>
 <%
				 
					
					  String email=request.getSession().getAttribute("email").toString(); 
				       
				       System.out.println("Gmail Id: "+email);
 
 String name="";
String filename=""; 
String filetype="";
String filesize="";
String filekey="";
 String decryption="";
 String req="request";
 String cspkey="";
%>
<div class="container">
    <div class="row clearfix">
    	<div class="col-md-12 table-responsive">
			<table class="table table-bordered table-hover table-sortable table-responsive-md" id="tab_logic">
				<thead>
					<tr >
						<th class="text-center">
							Filename
						</th>
						 <th class="text-center">
							umail
						</th>
						 
        				 <th class="text-center">
							Download</th>
					</tr>
				</thead>
				<% 


Connection d = Database.create();
PreparedStatement p = d.prepareStatement("SELECT * FROM `itjbco2`.`thirdaccept` where umail='"+email+"'");
ResultSet s=p.executeQuery();
 while(s.next()){
	 String id=s.getString(1);
filename=s.getString(2);
filekey=s.getString(3);
cspkey=s.getString(4);
 
    
%>
	  
 <tr class="table-info">
 
<td style="text-align:center"><%=s.getString(2)%></td>  
   <td style="text-align:center"><%=s.getString(6)%></td> 
  <td align="left" style="text-align:center"><a href="Download?name=<%=filename %>&&filekey=<%=filekey%>&&cspkey=<%=cspkey%>&&usermail=<%=email%>  "><button class="btn btn-success">Download</button></a></td>  
</tr> 
  <%}%> 
				</table>
				</div>
	</div>
	  
</div>
 
 
</body>
</html>