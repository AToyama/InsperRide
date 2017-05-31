<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receber Carona</title>
</head>
<body>
<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>
<%@ page import = "java.util.List" %>

	<table>	
		<% 
		DAO dao = new DAO();
		List<Caronas> caronas = dao.listaCaronas();
		
		for (Caronas carona : caronas) { 
		 %>
				
		
		<form method='post' enctype="multipart/form-data">
		<tr>
			<p><td><%=carona.getBairro()%></td></p>
			<p><td><%=carona.getCarro()%></td></p>
			<p><td><%=carona.getEndereco()%></td></p>
			<p><td><%=carona.getIndo()%></td></p>
			<p><td><%=carona.getObs()%></td></p>
			<p><td><%=carona.getTolerancia()%></td></p>
			<p><td><%=carona.getUsuarioId()%></td></p>
			<p><td><%=carona.getVagas()%></td></p>
			<td><input type="submit"name="carona_<%=(String) session.getAttribute("user")%>"value="Pegar Carona"></td>
		</tr>
		</form>
		<%} %>
	</table>

</body>
</html>