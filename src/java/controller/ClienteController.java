package controller;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Administrador;
@WebServlet (name="ClienteController", urlPatterns = "/ClienteController")
public class  ClienteController extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, NoSuchMethodException, ClassNotFoundException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmaOperacao")) {
            confirmarOperacao(request, response);
        } else {
            if (acao.equals("prepararOperacao")) {
                try {
                    prepararOperacao(request, response);

                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                if (acao.equals("Only")) {
                    request.setAttribute("administradores", Administrador.findAll());
                    RequestDispatcher view = request.getRequestDispatcher("pesquisaAdministrador.jsp");
                    view.forward(request, response);

                }
            }
        }
    }

    protected void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        String operacao = request.getParameter("operacao");
        request.setAttribute("operacao", operacao);
       
        if (!operacao.equals("Incluir")) {
            Administrador administrador = Administrador.find(Long.parseLong(request.getParameter("id")));
            request.setAttribute("administrador", administrador);

        }
        request.getRequestDispatcher("manterAdministrador.jsp").forward(request, response);
    }

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, NoSuchMethodException {
        String operacao = request.getParameter("operacao");
         
        String nome = request.getParameter("txtNomeAdministrador");
        String email = request.getParameter("txtEmailAdministrador");
        String senha = request.getParameter("txtSenhaAdministrador");
        Long id = null;
        if (!operacao.equals("Incluir")) {
            id = Long.parseLong(request.getParameter("id"));
        }
          
        
        try {
          Administrador administrador = new Administrador(nome,email,senha);
         
          
            if (operacao.trim().equals("Incluir")) {
                administrador.save();
               
            } else if (operacao.equals("Editar")) {
                administrador.setId(id);
                administrador.save();
            } else if (operacao.equals("Excluir")) {
                administrador.setId(id);
                administrador.remove();
            }
            RequestDispatcher view = request.getRequestDispatcher("ClienteController?acao=Only");
            view.forward(request, response);
        } catch (IOException e) {
            throw new ServletException(e);
        } catch (ServletException e) {
            throw e;
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
