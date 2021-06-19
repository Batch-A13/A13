<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Transitive register form a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link href="css5/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css5/font-awesome.css"><!--font_wesome_icons-->
<link href="//fonts.googleapis.com/css?family=Exo+2" rel="stylesheet"><!--online fonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet"><!--online fonts-->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="w3ls-headding">
		<h1><span>U</span>ser <span>R</span>egister <span>f</span>orm</h1>
	</div>
	<div class="agile-main">
		<div class="agile-left">
				<%
				String name=request.getParameter("email");
				System.out.println("email:"+name);
				
				%>
		</div>
		<div class="agile-right">
			<form action="Userreg" method="post">
				<div class="agile-right-h2">
				 
					<h2> register here</h2>
				</div>
				<div class="w3l-name">
					<span><i class="fa fa-user" aria-hidden="true"></i></span>
					<input type="text" name="Username" placeholder="Username" required=""/>
				</div>
				<div class="clear"></div>
				<div class="w3l-email">
					<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input type="email" name="email" placeholder="Email" required=""  />
				</div>
				<div class="clear"></div>
				<div class="w3l-psw">
					<span><i class="fa fa-lock" aria-hidden="true"></i></span>
					<input type="password" name="Password" placeholder="password" required=""/>
				</div>
				<div class="clear"></div>
				<div class="w3l-cpsw">
					<span><i class="fa fa-lock" aria-hidden="true"></i></span>
					<input type="password" name="cPassword" placeholder="confirm-Password" required=""/>
				</div>
				<div class="w3l-name">
					<span><i class="fa fa-phone" aria-hidden="true"></i></span>
					<input type="text" name="phno" placeholder="Phone Number" required=""/>
				</div>
				<div class="w3l-agree">
					<input type="checkbox" class="checkbox">
					<p>i agree terms and conditions</p> 
				</div>
				<div class="clear"></div>
				
				<div class="w3l-submit">
					<input type="submit" value="register now">
				</div>
				<div class="row">
					<div class="agile_full field">
						<h2 class="signup" style="font-size:20px;font-family:Pussycat, Algerian, Broadway;color:red;">Already have account yet? <a href="UserLogin.jsp" class="signuplink" style="color:yellow">LOGIN</a></h2>
					</div>
				</div>
			</form>
				 
		</div>
		<div class="clear"></div>
	</div>
		 
</body>
</html>