/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.Controlador;
import java.io.IOException;
import java.io.PrintWriter;
import entidades.Produto;
import entidades.Usuario;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pietro
 */
public class Cadastraproduto extends HttpServlet {

    private Controlador con;
    
    @Override
    public void init() throws ServletException {
        super.init();
        
        con = new Controlador();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
            request.setCharacterEncoding("UTF-8");
        
            Produto prod = new Produto();
            prod.setNome(request.getParameter("nome"));
            prod.setDescricao(request.getParameter("descricao"));
            prod.setPreco(request.getParameter("preco"));
            prod.setQuantidade(request.getParameter("quantidade"));
            prod.setTipo(request.getParameter("tipo"));
            prod.setUsuario((Usuario)request.getSession().getAttribute("user"));
            
            
            con.salvarProduto(prod);
            response.sendRedirect("inicial.jsp");
            
            
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

}
