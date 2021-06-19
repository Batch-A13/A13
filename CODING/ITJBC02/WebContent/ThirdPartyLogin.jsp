<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords"
		content="Desk Login form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<!-- //Meta tag Keywords -->

	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

	<!--/Style-CSS -->
	<link rel="stylesheet" href="css4/style.css" type="text/css" media="all" />
	<!--//Style-CSS -->
	<style>	
	 #grad1 {
            height: 100px;
            background: -webkit-linear-gradient(left, red , blue);
            background: -o-linear-gradient(right, red, blue); 
            background: -moz-linear-gradient(right, red, blue);
            background: linear-gradient(to right, red , blue);
         }
	</style>
	
</head>

<body>
 <div id = "grad1">
	<section class="w3l-forms-main-61">
		<div class="form-inner">
			<div class="wrapper">
				<div class="d-grid top-form">
					<div class="logo">
						<a class="brand-logo" href="index.html"><span><span class="fa fa-viadeo"
									aria-hidden="true"></span> Service Provider Login form</span></a>
						<!-- if logo is image enable this   
									<a class="brand-logo" href="#index.html">
										<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
									</a> -->
					</div>
				</div>
				<div class="form-bg-blur">
					<div class="form-61">
						<h4 class="form-head">User Login</h4>

						<form action="ThirdLogin" method="post">
							<div class="">
								<p class="text-head">Username</p>
								<input type="text" name="username" class="input" placeholder="username" required />
							</div>
							<div class="">
								<p class="text-head">Password</p>
								<input type="password" name="password" class="input" placeholder="password" required />
							</div>
							<label class="remember">
								<input type="checkbox">
								<span class="checkmark"></span>Keep me logged in
							</label>
							<button type="submit" class="signinbutton btn">LOGIN</button>
							<p class="signup">Forgot password?<a href="#forgot" class="signuplink">Click here</a></p>
						</form>
					</div>
				</div>
				 
			</div>
 
		</div>
	</section>
	</div>
</body>

</html>