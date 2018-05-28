<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] Array = (String[]) request.getAttribute("Resultado");
    String Min = Array[1];
    String Max = Array[2];
    String MinValue = Array[Array.length - 3];
    String MaxValue = Array[Array.length - 2];
    String Result = Array[Array.length - 1];
%> 
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sistema Inteligente</title>


        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
        <script type="text/javascript" src="JavaScript/javascript.js"></script>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet" type="text/css"  href="css/estilo.css">
    </head>

    <body>

        <nav class="navbar navbar-inverse navbar-static-top" id="nav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=#navegacao>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="img/logo.png"></a>
                </div><!--FINAL NAVBAR HEADER-->

                <div class="collapse navbar-collapse" id="navegacao">
                    <div>   
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="Page2.jsp">Treinamento</a></li>

                        </ul>
                    </div>

                    <div>   
                        <ul class="nav navbar-nav navbar-right">

                            <li><a class="btn btn-lg btn-primary " type="submit" href="index.jsp" >Sair</a></li>
                        </ul>
                    </div>

                </div> <!--FINAL NAVBAR COLLAPSE-->
            </div><!--FINAL CONTAINER-->
        </nav><!--FINAL NAV-->
        <div class = "container">
            <div class="row">
                <div class ="col-md-12">
                    <div id ="resultado">
                        <h1 style="size: 20px">Resultado</h1>
                        O resultado pode variar o error entre  R$<%=Min%> á  R$<%=Max%>.<br>
                        Valor: R$<%=Result%><br>
                        Podendo assim errar no minimo: R$<%=MinValue%> e no maximo: R$<%=MaxValue%>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
