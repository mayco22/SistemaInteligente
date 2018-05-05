<%-- 
    Document   : Logon
    Created on : 05/05/2018, 11:07:19
    Author     : mayco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Resultado do cálculo</h1>
        <form>
            Distância máxima
            <input type="text" size="10" value="<%= request.getAttribute("retorno")%>"><br>
            
            <input type="button" value="retornar" onclick="history.back()">
        </form>
    </body>
</html>
