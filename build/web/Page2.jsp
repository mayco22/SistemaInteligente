<%-- 
    Document   : Page2
    Created on : 17/05/2018, 20:33:23
    Author     : mayco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <li><a href="pagina2.html">Cadastro</a></li>
                            <li><a href="pagina3.html">Treinamento</a></li>
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
        <div class="container">
            <div class="page-header">
                <h1><i class="fas fa-users"></i> Treinamento</h1>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <form class="form-horizontal" action="trainer" method="GET" >
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Centro de custo</label>
                             
                                 <input type="text" class="form-control"  placeholder="Centro de custo" name="centrocusto">
                             </div>
                        </div>
                        
                        
                        <div class="form-group">
                            <div class="col-md-10"
                            <label>Municipio</label>
                            <input type="text" name="municipio" class="form-control"  placeholder="Municipio" ></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Sexo</label>
                            <input type="text" name="sexo" class="form-control"  placeholder="Sexo"></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Estado civil</label>
                            <input type="text" name="estadocivil" class="form-control"  placeholder="Estado Civil"></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Idade</label>
                            <input type="text" name="idade" class="form-control"  placeholder="Idade" ></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Tempo de casa</label>
                            <input type="text" name="tempocasa" class="form-control"  placeholder="Tempo de Casa"></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Dependentes</label>
                            <input type="text" name="dependentes" class="form-control"  placeholder="Dependentes"></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Total de Coparticipação</label>
                            <input type="text" name="totalcop" class="form-control"  placeholder="Total de Coparticipacao"></input>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                            <label>Total de atestados</label>
                            <input type="text" name="totalatestado" class="form-control"  placeholder="Total de Atestados"></input>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default">Treinar</button>
                    </form>
                </div> 
            </div>
        </div> 
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
