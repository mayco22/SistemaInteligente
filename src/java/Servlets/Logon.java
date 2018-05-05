/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import br.com.SistemaIteligente.WEkA.Connection;
import java.io.IOException;
import java.io.PrintWriter;
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
        //Connection con = (Connection) Connection.getConnection();
        
        //Seta os valores dos campos no html nas variaveis
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        request.setAttribute("retorno", usuario+" ("+senha+")");
        
        //faz os calculos
        
        request.getRequestDispatcher("Logon.jsp").forward(request, response);
        
        //faz uma requisicao para mandar no caminho informado
       // Connection.closeConnection(con, stmt);
    }
}