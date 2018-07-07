<%-- 
    Document   : Page3
    Created on : 17/05/2018, 20:26:03
    Author     : mayco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% double[]Resp = (double[]) request.getAttribute("arrayCheckbox"); %>
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
      <a class="navbar-brand" href="#"><img src="img/logo2.png"></a>
    </div><!--FINAL NAVBAR HEADER-->

    <div class="collapse navbar-collapse" id="navegacao">
        <div>   
      <ul class="nav navbar-nav navbar-left">
        <li><a href="pagina1.html">Cadastro</a></li>
        <li><a href="pagina2.html">Treinamento</a></li>
       
      </ul>
       </div>
        
         <div>   
      <ul class="nav navbar-nav navbar-right">
        
          <li><button class="btn btn-lg btn-primary " type="submit" onclick="sair();" >Sair</button></li>
      </ul>
       </div>
         
    </div> <!--FINAL NAVBAR COLLAPSE-->
  </div><!--FINAL CONTAINER-->
</nav><!--FINAL NAV-->
<div class = "container">
    <div class="row">
        <div class ="col-md-12">
            <div id ="resultado">
                <p id="Resp">&nbsp;</p>
                <%System.out.println("<p> sim: "+Resp[0]+"</p>");%>
                <%System.out.println("<p> nao: "+Resp[1]+"</p>");%>
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
