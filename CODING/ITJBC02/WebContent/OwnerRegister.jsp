<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Custom validation form Flat Responsive Widget Template :: w3layouts</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Custom validation form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#confirm_password").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	<link href="css1/style.css" rel='stylesheet' type='text/css' />
	<!-- <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /> -->
	<!--// Stylesheets -->
	<link href="//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet">
	<body>
		<!-- header -->
		<header>
			<h1 class="text-center">custom validation form</h1>
		</header>
		<!-- //header -->
		<!-- form section -->
		<section class="w3ls-reg">
			<form method="post" id="form" action="OwnerRegister"  >
				<div class="row">
					<div class="agile_full field">
						<label for="labelName">Name <span>&nbsp; * </span></label>
						<input type="text" id="labelName" class="form-control" data-field="name" name="unmae">
						<div class="valid-message"></div>
					</div>
				</div>
				 
				<div class="row">
					<div class="agile_full field">
						<label for="labelEmail">E-mail <span>&nbsp; * </span></label>
						<input type="email" id="labelEmail" class="form-control" data-field="email" name="email">
						<div class="valid-message"></div>
					</div>
				</div>
				<div class="row">
					<div class="agile_full field">
						<label for="labelPhone">Phone number <span>&nbsp; * </span></label>
						<input type="tel" id="password" class="form-control" data-field="phone" name="phno">
						 
					</div>
				</div>
				 <div class="row">
					<div class="agile_full field">
						<label for="labelPhone">Password<span>&nbsp;*</span></label>
						<input type="password" id="confirm_password" class="form-control"  name="pass"  >
						 
					</div>
				</div>
				<div class="row">
					<div class="agile_full field">
						<label for="labelPhone">Confirm Password<span>&nbsp;*</span></label>
						<input type="password" id="labelPhone" class="form-control"    name=cpass>
						<div class="valid-message"></div>
					</div>
				</div>
				 
					 
			 
				<div class="row">
					<div class="agile_full field">
						<button class="" type="submit">Submit</button>
					</div>
				</div>
				<div class="row">
					<div class="agile_full field">
						<h2 class="signup" style="font-size:20px;font-family:Pussycat, Algerian, Broadway;">Already have account yet? <a href="OwnerLog.jsp" class="signuplink" style="color:#cc0000">LOGIN</a></h2>
					</div>
				</div>
			</form>
			<!-- <p class="signup">Already have account yet? <a href="UserLog.jsp" class="signuplink" style="color:#cc0000">LOGIN</a></p> -->
		</section>
		 
		<script src="js1/jquery-2.2.3.min.js"></script>
		<!-- script for validation -->
		<script src="js1/jquery.formValid.js"></script>
		<!-- //script for validation -->
		<!-- //js -->
	</body>
	<!-- //Body -->
</html>