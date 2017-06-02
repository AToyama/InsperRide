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
                        <li>
                            <a href="#">Quero Carona</a>
                        </li>
                        <li>
                            <a href="#">Dar Carona</a>
                        </li>
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
            		            		
            		dao.getCaronaAtiva(dao.getUsuarioId(email));
				
					%>
                    <br>
                    Pessoas Confirmadas:
                    <br>
                    <%=carona.getUsuario1()%>
                    <%=carona.getUsuario2()%>
                    <%=carona.getUsuario3()%>
                    <%=carona.getUsuario4()%>
                    <!-- <img src="user.jpg" class="img-circle" alt="user" width="20%">
                    <img src="user.jpg" class="img-circle" alt="user" width="20%">
                    <img src="user.jpg" class="img-circle" alt="user" width="20%"> -->
                    <br>
                    <br> 
                    Vagas Disponíveis: <%=carona.getVagas()%>
                    <br>
                    <br>
                    Tempo restante: 6 minutos 
                    <br>
                    <br>
                    <%} %>
                    <div class="col-md-4 portfolio-item">
                        <button class="w3-button w3-block w3-dark-grey" name="cancelar_carona">CANCELAR</button>
                        <br>
                        <button class="w3-button w3-block w3-dark-grey" name="">PARTIR</button>
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
                    </div>
                </div>
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