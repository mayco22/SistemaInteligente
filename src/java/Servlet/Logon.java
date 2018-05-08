/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Usuarios.Usuario;
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

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Connection con = (ConnectionFactory) ConnectionFactory.getConnection();
        //Seta os valores dos campos no html nas variaveis
        Usuario usu = new Usuario();
        String nome = usu.toString();
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        boolean Result = true;
        
        if(Result){
            request.getRequestDispatcher("pagina2.html").forward(request, response);
        }else{
            request.getRequestDispatcher("index.html").forward(request, response);
        }
    }

    
}
