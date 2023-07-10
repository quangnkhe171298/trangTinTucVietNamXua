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
public class NewsListController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet newslist</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet newslist at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NewsDao dao = new NewsDao();
        List<News> newslist = dao.getAllNews();
        req.setAttribute("data", newslist);
         CategoryDao cdao = new CategoryDao();
        List<Category> listC = cdao.getAllCategorys();
        News news = dao.getNewsById("4");
        List<News> top4 = dao.getTop4News();
         req.setAttribute("news", news);
         req.setAttribute("top4", top4);
        req.setAttribute("listC", listC);
        
        req.getRequestDispatcher("home.jsp").forward(req, resp);
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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        String from = req.getParameter("from");
        String to = req.getParameter("to");
        String category = req.getParameter("choices-single-default");
        NewsDao dao = new NewsDao();
        List<News> newslist = new ArrayList<>();

        CategoryDao cdao = new CategoryDao();
        List<Category> listC = cdao.getAllCategorys();
        if (category.equals("all")) {
            newslist = dao.getAllNews();
            req.setAttribute("listC", listC);
            req.setAttribute("data", newslist);
            req.setAttribute("search", search);
            req.setAttribute("from", from);
            req.setAttribute("to", to);
            req.getRequestDispatcher("home.jsp").forward(req, resp);
            return;
        }
        newslist = dao.getAllNewsBySearch(search, from, to, Integer.parseInt(category));

        req.setAttribute("listC", listC);
        req.setAttribute("data", newslist);
        req.setAttribute("search", search);
        req.setAttribute("from", from);
        req.setAttribute("to", to);
        req.getRequestDispatcher("home.jsp").forward(req, resp);
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
