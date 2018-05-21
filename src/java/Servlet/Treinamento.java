/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import WekaTrei.MutiTreina;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mayco
 */
@WebServlet(name = "trainer", urlPatterns = {"/trainer"})
public class Treinamento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        double in1 = Double.parseDouble(request.getParameter("centrocusto"));
        double in2 = Double.parseDouble(request.getParameter("municipio"));
        double in3 = Double.parseDouble(request.getParameter("sexo"));
        double in4 = Double.parseDouble(request.getParameter("estadocivil"));
        double in5 = Double.parseDouble(request.getParameter("idade"));
        double in6 = Double.parseDouble(request.getParameter("tempocasa"));
        double in7 = Double.parseDouble(request.getParameter("dependentes"));
        double in8 = Double.parseDouble(request.getParameter("totalcop"));
        double in9 = Double.parseDouble(request.getParameter("totalatestado"));
        //double vet[] = {in1,in2,in3,in4,in5,in6,in7,in8,in9};
        
        String out[] = null;
        
        try {
            out = Resp();
        } catch (Exception ex) {
            Logger.getLogger(Treinamento.class.getName()).log(Level.SEVERE, null, ex);
        }
            request.setAttribute("Resp1", out[0]);
            request.setAttribute("Resp2", out[1]);
            request.setAttribute("Resp3", out[2]);
            
            request.getRequestDispatcher("Page3.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    private String[] Resp() throws Exception{
        MutiTreina MT = new MutiTreina();
        String resp[]=MT.Treinador();
        return resp;
    }
    
}
