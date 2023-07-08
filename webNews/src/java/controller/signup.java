/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author kiemq
 */
public class signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest requestuest, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signup at " + requestuest.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String fullname = request.getParameter("fullname");
        if (pass.equals(repass)) {
            UserDao dao = new UserDao();
            User a = dao.checkAccountExist(user);
            User account = new User(user, pass, fullname, 2);
            if (a == null) {
                dao.insertAccount(account);
                response.sendRedirect("home.jsp");
            } else {
                request.setAttribute("a", 1);
                request.setAttribute("user2", user);
                request.setAttribute("pass2", pass);
                request.setAttribute("repass", repass);
                request.setAttribute("email", fullname);
                request.setAttribute("mess2", "Account already exist!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("a", 1);
            request.setAttribute("user2", user);
            request.setAttribute("pass2", pass);
            request.setAttribute("repass", repass);
            request.setAttribute("email", fullname);
            request.setAttribute("mess2", "Wrong repass. Please enter again!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String fullname = request.getParameter("fullname");
        if (pass.equals(repass)) {
            UserDao dao = new UserDao();
            User a = dao.checkAccountExist(user);
            User account = new User(user, pass, fullname, 2);
            if (a == null) {
                dao.insertAccount(account);
                response.sendRedirect("login");
            } else {
                request.setAttribute("a", 1);
                request.setAttribute("user2", user);
                request.setAttribute("pass2", pass);
                request.setAttribute("repass", repass);
                request.setAttribute("email", fullname);
                request.setAttribute("mess2", "Account already exist!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("a", 1);
            request.setAttribute("user2", user);
            request.setAttribute("pass2", pass);
            request.setAttribute("repass", repass);
            request.setAttribute("email", fullname);
            request.setAttribute("mess2", "Wrong repass. Please enter again!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
