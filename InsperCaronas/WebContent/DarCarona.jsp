<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>
	Partindo ou chegando do Insper<input type='text' name='indo'>
	Endereço de partida ou chegada<input type='text' name='endereco'>
	Horário de partida<input type="time" name="horario" step="1">
	Tolerância de espera<input type="time" name="tolerancia" step="1">
	placa do carro<input type='text' name='placa'>
	Modelo do carro<input type='text' name='carro'>
	Vagas disponíveis<input type='text' name='vagas'>
	Observações<input type='text' name='observacao'>
	Bairro<input type='text' name='bairro'>
	<form method='post' enctype="multipart/form-data">
		<input type='submit' name='criar_carona' value='Criar Carona'>
	</form>
	
	<%DAO dao = new DAO();
	//Caronas nova_carona = new Caronas();
	String email = (String) session.getAttribute("user");
	
	int usuarioId = dao.getUsuarioId(email);
	//System.out.println(usuarioId);
	/*
	if(request.getParameter("criar_carona")!=null){
		System.out.println("adiciona carona");
		nova_carona.setIndo(request.getParameter("indo"));
		nova_carona.setEndereco(request.getParameter("endereco"));
		nova_carona.setPlaca(request.getParameter("placa"));
		nova_carona.setCarro(request.getParameter("carro"));
		nova_carona.setVagas(Integer.valueOf(request.getParameter("vagas")));
		nova_carona.setObs(request.getParameter("observacao"));
		nova_carona.setBairro(request.getParameter("bairro"));
		nova_carona.setHorario(dao.getCurrentTime());
		nova_carona.setTolerancia(dao.getCurrentTime());
		nova_carona.setUsuarioId(1);
		
		dao.adicionaCarona(nova_carona);
		
		
	}*/

	%>
</body>
</html>