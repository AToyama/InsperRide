<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receber Carona</title>


<style type="text/css">
  <%@include file="css/bootstrap.min.css"%>
  <%@include file="css/3-col-portfolio.css"%>
  <%@include file="css/navbar.css"%>
  <%@include file="css/quero_carona.css"%>
  <%@include file="css/w3.css"%>
</style>

<script type="text/javascript">
          <%@include file="js/tab.js"%>
          <%@include file="js/bootstrap.min.js"%>
</script>

</head>
<body>
<%@ page import ="br.insper.edu.model.*" %>
<%@ page import ="br.insper.edu.controller.*" %>
<%@ page import = "java.util.List" %>

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
    <div class="container">
      <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'indo')">Indo para o Insper</button>
            <button class="tablinks" onclick="openTab(event, 'saindo')">Saindo do Insper</button>
        </div>
        <div id="indo" class="tabcontent">
          <p>INDO</p>

          <table> 
          <% 
          DAO dao = new DAO();
          List<Caronas> caronas = dao.listaCaronas();
          
          for (Caronas carona : caronas) {
            if("i".equals(carona.getIndo())){ 
           %>
          <div class="row">
            <% for(int i = 1;i <= 3;i++){ %>
              <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3><%dao.getNome_FromId(carona);%></h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p><td><%=carona.getBairro()%> - </td></p>
                                <p><td><%=carona.getEndereco()%></td></p><br>
                                <p><td><%=carona.getCarro()%></td></p><p><td>Placa:<%=carona.getPlaca()%></td></p><br>
                                <p><td>Tolerancia: <%=carona.getTolerancia()%></td></p><br>
                                <p><td>Vagas: <%=carona.getVagas()%></td></p><br>
                                <p>Observações:</p><br>
                                <p><td><%=carona.getObs()%></td></p>
                            </div>
                            <td><input class="w3-block w3-dark-grey" type="submit"name="carona_<%=(String) session.getAttribute("user")%>"value="Pegar Carona"></td>
                        </div>
                    </div>
                </div>
            <% } %>
          </div>
          <% }} %>
        </table>

            <!-- /.row -->
        </div>

        <div id="saindo" class="tabcontent">
          <p>SAINDO</p>

          <table> 
          <%           
          for (Caronas carona : caronas) {
            if("s".equals(carona.getIndo())){ 
           %>
          <div class="row">
            <% for(int i = 1;i <= 3;i++){ %>
              <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3><%dao.getNome_FromId(carona);%></h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p><td><%=carona.getBairro()%> - </td></p>
                                <p><td><%=carona.getEndereco()%></td></p><br>
                                <p><td><%=carona.getCarro()%></td></p><p><td>Placa:<%=carona.getPlaca()%></td></p><br>
                                <p><td>Tolerancia: <%=carona.getTolerancia()%></td></p><br>
                                <p><td>Vagas: <%=carona.getVagas()%></td></p><br>
                                <p>Observações:</p><br>
                                <p><td><%=carona.getObs()%></td></p>
                            </div>
                            <td><input class="w3-block w3-dark-grey" type="submit"name="carona_<%=(String) session.getAttribute("user")%>"value="Pegar Carona"></td>
                        </div>
                    </div>
                </div>
            <% } %>
          </div>
          <% }} %>
        </table>
      </div>

</body>
</html>