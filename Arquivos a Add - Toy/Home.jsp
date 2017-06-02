<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>

    <style type="text/css">
        <%@include file="css/bootstrap.min.css"%>
        <%@include file="css/2-col-portfolio.css"%>
        <%@include file="css/navbar.css"%>
        <%@include file="css/home_caronas.css"%>
        <%@include file="css/w3.css"%>
    </style>

</head>

<body>

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
        <br>
        <form method='post' enctype="multipart/form-data">
	        <div class="col-md-6 portfolio-item">
	            <input type="submit" name="receber_carona" value="Pegar Carona" class="submit" ">                 
	        </div>
	        <div class="col-md-6 portfolio-item">
	            <input type="submit" name="dar_carona" value="Dar Carona" class="submit">         
	        </div>
	    </form>
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

    <script type="text/javascript">
        <%@include file="js/jquery.js"%>
        <%@include file="js/bootstrap.min.js"%>
    </script>

</body>

</html>
