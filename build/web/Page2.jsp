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
        <div class="container">
            <div class="page-header">
                <h1><i class="fas fa-users"></i> Treinamento</h1>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <form class="form-horizontal" action="trainer" method="GET" >
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="centrocusto">Centro de custo*</label>
                                <input type="number" class="form-control" id="centrocusto" step="any"  placeholder="Centro de custo" name="centrocusto" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="municipio">Municipio*</label>
                                <input type="number" id="municipio"  name="municipio" step="any" class="form-control"  placeholder="Municipio" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="sexo">Sexo*</label>
                                <input type="number" id="sexo" name="sexo" class="form-control" step="any"  placeholder="Sexo" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="estadocivil">Estado civil*</label>
                                <input type="number" name="estadocivil" id="estadocivil" class="form-control" step="any"  placeholder="Estado Civil" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="idade">Idade*</label>
                                <input type="number" name="idade" id="idade" class="form-control" step="any"  placeholder="Idade" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="tempocasa">Tempo de casa*</label>
                                <input type="number" name="tempocasa" id="tempocasa" class="form-control" step="any"  placeholder="Tempo de Casa" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="dependentes">Dependentes*</label>
                                <input type="number" name="dependentes" id="dependentes" class="form-control" step="any"  placeholder="Dependentes" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-10">
                                <label for="totalatestado">Total de atestados*</label>
                                <input type="number" id="totalatestado" name="totalatestado" class="form-control" step="any"  placeholder="Total de Atestados" required>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-default btn-lg" value="Treinar"/>
                    </form>
                </div> 
                
                <div class="col-md-4">
                    <div>
                        <h1>Instruções</h1>
                        
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis erat. Etiam eu ornare odio,
                            vitae ultricies magna. Morbi congue odio et tempus rutrum. Nunc sollicitudin semper lacus, at egestas lectus tempor sed.
                            Vivamus lectus magna, viverra mattis interdum quis, malesuada ullamcorper arcu. Ut lobortis convallis augue vel finibus. Donec in mauris non ipsum accumsan accumsan quis sit amet magna. Maecenas ultrices aliquam justo, vel pretium erat. Pellentesque porttitor sodales risus, quis fringilla nisi fermentum vestibulum. Fusce finibus pulvinar mi ut egestas. Suspendisse suscipit felis eget elementum eleifend. Vestibulum aliquet cursus turpis, ut luctus diam malesuada nec. Integer et quam tellus.
                            Donec elementum sodales libero, at malesuada lacus fringilla vel. Nulla sit amet cursus arcu.</p>
                        
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis erat. Etiam eu ornare odio,
                            vitae ultricies magna. Morbi congue odio et tempus rutrum. Nunc sollicitudin semper lacus, at egestas lectus tempor sed.
                            Vivamus lectus magna, viverra mattis interdum quis, malesuada ullamcorper arcu. Ut lobortis convallis augue vel finibus. Donec in mauris non ipsum accumsan accumsan quis sit amet magna. Maecenas ultrices aliquam justo, vel pretium erat. Pellentesque porttitor sodales risus, quis fringilla nisi fermentum vestibulum. Fusce finibus pulvinar mi ut egestas. Suspendisse suscipit felis eget elementum eleifend. Vestibulum aliquet cursus turpis, ut luctus diam malesuada nec. Integer et quam tellus.
                            Donec elementum sodales libero, at malesuada lacus fringilla vel. Nulla sit amet cursus arcu.</p>
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
