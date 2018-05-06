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
import br.com.SistemaInteligente.Dao.LogonDao;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        LogonDao ld = new LogonDao();
        //Seta os valores dos campos no html nas variaveis
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        boolean Result = false;
        try {
            //request.setAttribute("retorno", usuario+" ("+senha+")");
            Result = ld.GetLogon(usuario, senha);
            //faz os calculos
        } catch (SQLException ex) {
            Logger.getLogger(Logon.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(Result){
            request.getRequestDispatcher("pagina2.html").forward(request, response);
        }else{
            request.getRequestDispatcher("index.html").forward(request, response);
        }
    }
}
