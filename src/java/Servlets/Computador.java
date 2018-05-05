/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
@WebServlet(name = "Computador", urlPatterns = {"/Computador"})
public class Computador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        //Seta os valores dos campos no html nas variaveis
        float total = Float.parseFloat(request.getParameter("total"));
        float preco = Float.parseFloat(request.getParameter("preco"));
        float consumo = Float.parseFloat(request.getParameter("consumo"));
        //faz os calculos
        float valor = total * preco;
        float distancia = total * consumo;
        //cria atributos para retorno
        request.setAttribute("valor", valor);
        request.setAttribute("distancia", distancia);
        //faz uma requisicao para mandar no caminho informado
        request.getRequestDispatcher("computador.jsp").forward(request, response);
    }
}
