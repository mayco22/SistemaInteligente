/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author mayco
 */
@WebServlet(name = "Logon", urlPatterns = {"/Logon"})
public class Logon extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        //Connection con = (ConnectionFactory) ConnectionFactory.getConnection();
        //Seta os valores dos campos no html nas variaveis
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        boolean Result = false;
        //request.setAttribute("retorno", usuario+" ("+senha+")");
        
        //faz os calculos
        if(Result){
            request.getRequestDispatcher("pagina2.html").forward(request, response);
        }else{
            request.getRequestDispatcher("index.html").forward(request, response);
        }
    }
}
