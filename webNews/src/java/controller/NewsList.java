/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDao;
import dal.NewsDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.News;

/**
 *
 * @author kiemq
 */
public class NewsList extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewsList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewsList at " + request.getContextPath() + "</h1>");
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
        NewsDao dao = new NewsDao();
        List<News> newslist = dao.getAllNews();
        request.setAttribute("data", newslist);
        CategoryDao cdao = new CategoryDao();
        List<Category> listC = cdao.getAllCategorys();
        List<News> list4 = new ArrayList<>();
        list4 = dao.getTop2News();
        request.setAttribute("listC", listC);
        request.setAttribute("list4", list4);
        request.getRequestDispatcher("news.jsp").forward(request, response);
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
        String search = request.getParameter("search");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String category = request.getParameter("choices-single-default");
        NewsDao dao = new NewsDao();
        List<News> newslist = new ArrayList<>();

        CategoryDao cdao = new CategoryDao();
        List<Category> listC = cdao.getAllCategorys();
        newslist = dao.getAllNewsBySearch(search, from, to, Integer.parseInt(category));
        List<News> list4 = new ArrayList<>();
        list4 = dao.getTop2News();
        request.setAttribute("listC", listC);
        request.setAttribute("list4", list4);
        request.setAttribute("data", newslist);
        request.setAttribute("search", search);
        request.setAttribute("from", from);
        request.setAttribute("to", to);
        request.getRequestDispatcher("news.jsp").forward(request, response);
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
