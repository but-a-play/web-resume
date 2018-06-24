<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎进入简历制作平台！</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 














</script>
<meta name="keywords"
	content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="resources/web/css/loginstyle.css?v=12" rel='stylesheet'
	type='text/css' />
<!--webfonts-->
<link href="resources/web/css/webFont.css" rel="stylesheet" />
<!--//webfonts-->
<script src="resources/web/js/jquery.min.js"></script>
</head>
<body>
	<script>
		$(document).ready(function(c) {
			$('.close').on('click', function(c) {
				$('.login-form').fadeOut('slow', function(c) {
					$('.login-form').remove();
				});
			});
		});
	</script>
	<!--SIGN UP-->
	<h1>欢迎进入简历制作平台！</h1>
	<div class="login-form">
		<!-- 		<div class="close"></div> -->
		<div class="head-info">
			<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
				class="lbl-3"> </label>
		</div>
		<div class="clear"></div>
		<div class="avtar">
			<img src="resources/web/images/login/avtar.png" />
		</div>
		<form action="" method="post">
			<input type="text" class="text" name="username" value="Username"
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Username';}">
			<div class="key">
				<input type="password" name="password" value="Password"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Password';}">
				<div>
				<span style="color:white">RemeberMe</span><input type="checkbox" name="remeberMe">
				</div>
				
			</div>
			<div>
				<div class="login">
					<input type="submit" value="Login" formaction="login.jhtml">
				</div>
				<div class="register">
					<input type="submit" value="Register" formaction="register.jhtml">
				</div>
			</div>
		</form>

	</div>
	<div class="copy-rights">
		<p>
			Copyright &copy; 2018.Company name All rights reserved.<a
				target="_blank" href="http://localhost:8080/web-resume">赵洲</a>
		</p>
	</div>

</body>
</html>