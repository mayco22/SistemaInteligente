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

        
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                 
                <div class="navbar-header">
                 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                     <span class="sr-only">Toggle navigation</span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                 </button>
                 <a class="navbar-brand" href="#"><img src="img/logo.png"></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                   <ul class="nav navbar-nav">
                      <li><a href="Page2.jsp">Treinamento</a></li>
                   </ul>
                    <div class="navbar-form navbar-right">
                      <a type="submit" class="btn btn-default btn-sair" href="index.jsp">Sair</a>
                    </div>
     
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="page-header">
                <h1><i class="fas fa-users"></i> Treinamento</h1>
        </div>

        <div class="row">
                
                    <form class="form-horizontal" action="trainer" method="GET" >
                      <div class="col-md-6">  
                        <div class="form-group">
                            
                                <label for="centrocusto">Centro de custo*</label>
                                <input type="number" class="form-control" id="centrocusto" step="any"  placeholder="Centro de custo" name="centrocusto" required>
                            
                        </div>
                        <div class="form-group">
                            
                                <label for="municipio">Municipio*</label>
                                <input type="number" id="municipio"  name="municipio" step="any" class="form-control"  placeholder="Municipio" required>
                            
                        </div>
                        <div class="form-group">
                            
                                <label for="sexo">Sexo*</label>
                                <input type="number" id="sexo" name="sexo" class="form-control" step="any"  placeholder="Sexo" required>
                            
                        </div>
                        <div class="form-group">
                            
                                <label for="estadocivil">Estado civil*</label>
                                <input type="number" name="estadocivil" id="estadocivil" class="form-control" step="any"  placeholder="Estado Civil" required>
                            
                       
                        </div>
                      </div>

                     <div class="col-md-6">
                        <div class="form-group">
                            
                                <label for="idade">Idade*</label>
                                <input type="number" name="idade" id="idade" class="form-control" step="any"  placeholder="Idade" required>
                        
                        </div>
                        <div class="form-group">
                            
                                <label for="tempocasa">Tempo de casa*</label>
                                <input type="number" name="tempocasa" id="tempocasa" class="form-control" step="any"  placeholder="Tempo de Casa" required>
                            
                        </div>
                        <div class="form-group">
                            
                                <label for="dependentes">Dependentes*</label>
                                <input type="number" name="dependentes" id="dependentes" class="form-control" step="any"  placeholder="Dependentes" required>
                            
                        </div>
                        <div class="form-group">
                                <label for="totalatestado">Total de atestados*</label>
                                <input type="number" id="totalatestado" name="totalatestado" class="form-control" step="any"  placeholder="Total de Atestados" required>
                            
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-md-12 treinar">

                                <button type="submit" class="btn btn-default" value="Treinar">Treinar</button>
                            </div>
                        </div>
                    </form>
                
                
               
                    <div class="col-md-12 instrucao">
                        <h1>Instruções</h1>
                        
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis erat. Etiam eu ornare odio,
                            vitae ultricies magna. Morbi congue odio et tempus rutrum. Nunc sollicitudin semper lacus, at egestas lectus tempor sed.
                            Vivamus lectus magna, viverra mattis interdum quis, malesuada ullamcorper arcu. Ut lobortis convallis augue vel finibus. Donec in mauris non ipsum accumsan accumsan quis sit amet magna. Maecenas ultrices aliquam justo, vel pretium erat. Pellentesque porttitor sodales risus, quis fringilla nisi fermentum vestibulum. Fusce finibus pulvinar mi ut egestas. Suspendisse suscipit felis eget elementum eleifend. Vestibulum aliquet cursus turpis, ut luctus diam malesuada nec. Integer et quam tellus.
                            Donec elementum sodales libero, at malesuada lacus fringilla vel. Nulla sit amet cursus arcu.</p>
                        
                           
                    </div>
               
            </div>
        













        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
