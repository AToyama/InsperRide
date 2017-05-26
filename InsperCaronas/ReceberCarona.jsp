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
            <button class="tablinks" onclick="openTab(event, 'indo')">Indo para o Insper</button>
            <button class="tablinks" onclick="openTab(event, 'saindo')">Saindo do Insper</button>
        </div>

        <!-- Projects Row -->
        <div id="indo" class="tabcontent">

		<br>
        <br>
        <br>
            <div class="row">
                <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>Andr� Toyama</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 7:00</p><br>
                                <P>MORUMBI</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>JP Castro</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 10:00</p><br>
                                <P>MORUMBI</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>Rachel Moraes</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 13:30</p><br>
                                <P>MORUMBI</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- /.row -->
        </div>

        <!-- OTHER TAB -->

        <div id="saindo" class="tabcontent">
            <div class="row">
                <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>Camilia Achutti</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 12:00</p><br>
                                <P>MORUMBI</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 portfolio-item">
                    <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>Andr� Toyama</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 20:00</p><br>
                                <P>MORUMBI</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 portfolio-item">
                     <div class="w3-container">

                        <div class="w3-card-4" style="width:70%">
                            <header class="w3-container w3-light-grey">
                               <h3>Luciano Soares</h3>
                            </header>
                            <div class="w3-container">
                                <hr>    
                                <p>HOR�RIO: 17:45</p><br>
                                <P>VILA OLIMPIA</P>
                            </div>
                            <button class="w3-button w3-block w3-dark-grey">PEGAR CARONA</button>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

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
        
        <script type="text/javascript">
        	<%@include file="js/tab.js"%>
        	<%@include file="js/bootstrap.min.js"%>
    	</script>

    </div>
</body>
</html>