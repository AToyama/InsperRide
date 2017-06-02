<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>
<%@ page import = "java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carona Aberta</title>

<style type="text/css">
    <%@include file="css/bootstrap.min.css"%>
    <%@include file="css/3-col-portfolio.css"%>
    <%@include file="css/navbar.css"%>
    <%@include file="css/quero_carona.css"%>
    <%@include file="css/w3.css"%>
</style>

</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Insper Ride</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <span>
                    <ul class="nav navbar-nav">
                 
                        <li class ="sair">
                            <a href="#">Sair</a>
                        </li>
                    </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- 
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Page Heading
                    <small>Secondary Text</small>
                </h1>
            </div>
        </div>
        /.row -->

 		<div class="tab">
            <button class="tablinks" onclick="openTab(event, 'aberta')">Carona Aberta</button>
            <button class="tablinks" onclick="openTab(event, 'historico')">Histórico de Caronas</button>
        </div>

         <!-- Projects Row -->
        <div id="aberta" class="tabcontent">

           <div class="row">
                <div class="col-md-8 portfolio-item">
               		<%String email = null;
					email = (String) session.getAttribute("user");
            		
            		DAO dao = new DAO();
            		
            		Caronas carona = new Caronas();
            		            		
            		carona = dao.getCaronaAtiva(dao.getUsuarioId(email));
            		
            		if("N".equals(carona.getEfetivada())){
				
						%>
	                    <br>
	                    Pessoas Confirmadas:
	                    <br>
	                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario1())%>" height="100" width="100">
	                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario2())%>" height="100" width="100">
	                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario3())%>" height="100" width="100">
	                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario4())%>" height="100" width="100">
	                    <br>
	                    <br> 
	                    Vagas Disponíveis: <%=carona.getVagas()%>
	                    <br>
	                    <br>
	                    Horario de Saída: <%=carona.getHorario() %>
	                    <br>
	                    <br>
	                    
	                    <div class="col-md-4 portfolio-item">
	                    <form method='post' enctype="multipart/form-data">
	                    	<input type="submit"class="w3-button w3-block w3-dark-grey" name="cancelar_carona_<%=carona.getUsuarioId() %>" value = "CANCELAR">
	                        <br>
	                        <input type="submit" class="w3-button w3-block w3-dark-grey" name="efetivar_carona_<%=carona.getUsuarioId() %>" value="PARTIR">
	                    </form>
	                    
	                    <%} %>
                        
                    </div> 
                </div>                            
            </div>
        </div>
    
        
   

            <!-- /.row -->
        </div>

        <!-- OTHER TAB -->

        <div id="historico" class="tabcontent">
            <div class="row">
                <div class="col-md-8 portfolio-item">
                <br>
               <% 
          email = (String) session.getAttribute("user");
          List<Caronas> caronas = dao.getCaronasEfetivadas(dao.getUsuarioId(email));
          
          for (Caronas carona_ef : caronas) {
        	  
        	  System.out.println(caronas);
        	  
	            
	           %>
	           <div class="col-md-4 portifolio-item">
	            	<div class="w3-container">
	            		<div class="w3-card-4" style="width:70%">
	            			<header class="w3-container w3-light-grey">
	            				<h3><%=carona_ef.getHorario() %></h3>
	            			</header>
	            			<p><%=dao.getNomeFromId(carona_ef.getUsuario1()) %>
	            			<img src="<%=dao.getPhotoUsuarioId(carona.getUsuario1())%>" height="100" width="100">
	            			<p><%=dao.getNomeFromId(carona_ef.getUsuario2()) %>
		                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario2())%>" height="100" width="100">
		                    <p><%=dao.getNomeFromId(carona_ef.getUsuario3()) %>
		                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario3())%>" height="100" width="100">
		                    <p><%=dao.getNomeFromId(carona_ef.getUsuario4()) %>
		                    <img src="<%=dao.getPhotoUsuarioId(carona.getUsuario4())%>" height="100" width="100">
	            			<p><%=carona_ef.getBairro()%> - <%=carona_ef.getEndereco()%></p>

	            		<form method='post' enctype="multipart/form-data">
	            
	            	</div>
	            </div>
	        </div>
	        <br>
		<% } %>
                           </div>
        </div>
      

        <hr>

        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>


    </div>
    <!-- /.container -->

    <script type="text/javascript">
        <%@include file="js/tab.js"%>
        <%@include file="js/bootstrap.min.js"%>
    </script>
</body>
</html>