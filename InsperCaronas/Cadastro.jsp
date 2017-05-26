<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>


    
	<form method='post' enctype="multipart/form-data">
		Nome: <input type='text' name='nome'>
		E-Mail: <input type='text' name='email'>
		Senha: <input type='password' name='senha'>
		Telefone: <input type='text' name='telefone'>
		Foto: <input type='file' name='photo'>
		<input type='submit' name='submit' value='Submit'>
	</form>
			
</body>
</html>