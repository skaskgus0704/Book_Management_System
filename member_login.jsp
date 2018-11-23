<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	@media only screen and (max-width : 902px) {
		#login_button, #signup_button, #idfind_button, #pwfind_button  {
			width: 100% !important;
			padding : 0px !important;
			margin-top: 5px !important;
		}
		#button2 {
			padding-top : 0px !important;
		}	
	}
</style>
<script>
	function login(){
		if(form_Constraint.id.value == "")
			{
				alert("ID not entered.");
				form_Constraint.id.focus();
				return false;
			}
		if(form_Constraint.id.value.length < 6 || form_Constraint.id.value.length > 15)
		{
			alert("Please enter ID between 6 and 15 digits.");
			form_Constraint.id.focus();
			return false;
		}
		if(form_Constraint.password.value == "")
		{
			alert("Password not entered.");
			form_Constraint.password.focus();
			return false;
		}
		if(form_Constraint.password.value.length < 8 || form_Constraint.password.value.length > 20)
		{
			alert("Please enter Password between 8 and 20 digits.");
			form_Constraint.password.focus();
			return false;
		}
		form_Constraint.submit();
	}
</script>
</head>
<body>
	<section id="wrapper">
	<header>
		<div class="inner">
			<h2>Login</h2>
			<p>#</p>
		</div>
	</header>
	<div class="wrapper">
	<div class="inner" style="padding-top: 200px;">
		<h3 class="major">Login</h3>
		<form method="post" action="member_login_action.jsp" name = "form_Constraint">
			<div class="row gtr-uniform">
				<div class="col-6 col-6-xsmall">
					<label for="demo-name">ID</label>
					<input type="text" name="id" id="demo-name" autocomplete="off" maxlength="15"/>
				</div><br/>
				<div class="col-6 col-6-xsmall">
					<label for="demo-email">Password</label>
					<input type="password" name="password" id="demo-email" maxlength="20" autocomplete="off"/>
				</div>
				<div class="col-12 col-12-xsmall">
					<input type="button" value="Login" class="button primary fit" style="padding: 0; width: 49.8%;" id="login_button" onclick="login()">
					<input type="button" value="SignUp" class="button primary fit" onclick="loaction.href='index.jsp?section=member_signup.jsp'" style="padding: 0; width: 49.8%;" id="signup_button">
				</div>
				<div class="col-12 col-2-xsmall" style="padding-top: 5px;" id="button2">
					<input type="button" value="ID Find" class="button primary fit" style="padding: 0; width: 49.8%;" id="idfind_button" onclick="loaction.href='index.jsp?section=member_pwfind.jsp'">
					<input type="button" value="Password Find" class="button primary fit" onclick="loaction.href='index.jsp?section=member_idfind.jsp'" style="padding: 0; width: 49.8%;" id="pwfind_button">
				</div>
			</div>
		</form>
	</div>
	</div>
	</section>
</body>
</html>