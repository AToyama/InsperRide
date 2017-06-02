<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>InsperRide</title>
		<style type="text/css">
			<%@include file="css/normalize.css"%>
			<%@include file="css/login.css"%>
			<%@include file="css/login_style.css"%>
		</style>
	</head>
	<body>
	<div class="form">
		<div id="login">
			<h1 class="login">Login</h1>
	        <h1>Entre no Insper Ride</h1>

			<form method='post' enctype="multipart/form-data">
				<div class="field-wrap uptab">
					Nome
					<input type='text' name='email_login' required autocomplete="off">				
				</div>
				<div class="field-wrap uptab">
					E-Mail
					<input type='text' name='email_login' required autocomplete="off">				
				</div>
				<div class="field-wrap uptab">
					Senha
					<input type='text' name='email_login' required autocomplete="off">				
				</div>
				<div class="field-wrap uptab">
					Telefone
					<input type='text' name='email_login' required autocomplete="off">				
				</div>
				<div class="field-wrap uptab">
					Foto:
					<input type="file" name="photo">				
				</div>
				<input type="submit" class="button button-block" name="submit" value="submit">
	        </form>
	    </div>
	</div>
		<script type="text/javascript">
        		<%@include file="js/login.js"%>
    	</script>
	</body>
</html>