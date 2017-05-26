<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login succesful</title>
</head>
<body>
<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>
<%String email = null;
if(session.getAttribute("user")==null){
	response.sendRedirect("login.jsp");
}else email = (String) session.getAttribute("user");
String userEmail = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("email")) userEmail = cookie.getValue();
	if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
	//System.out.println(userEmail);
}
}
%>

<h3>Hi <%=userEmail %>, Login successful. Your Session ID=<%=sessionID %></h3>
<br>
Email=<%=email %>
<br>
	<form method='post' enctype="multipart/form-data">
		<input type='submit' name='dar_carona' value='Dar Carona'>
		<input type='submit' name='receber_carona' value='Receber Carona'>
		
	</form>
</body>
</html>