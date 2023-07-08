/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDao;
import dal.CommentDao;
import dal.NewsDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Comment;
import model.News;

/**
 *
 * @author kiemq
 */
public class DetailController extends HttpServlet {

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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        NewsDao dao = new NewsDao();
        News news = dao.getNewsById(id);
        HttpSession session = req.getSession();
        session.setAttribute("new", news);
        CommentDao cdao = new CommentDao();
        List<Comment> list = cdao.getAllCommentByNewId(id);
        int count = cdao.countCommentByNewId(id);
        CategoryDao cda = new CategoryDao();
        List<Category> listC = cda.getAllCategorys();
        List<News> list4 = new ArrayList<>();
        list4 = dao.getTop2News();
        req.setAttribute("list4", list4);
        req.setAttribute("listC", listC);
        req.setAttribute("count", count);
        req.setAttribute("list", list);
        req.setAttribute("news", news);
        req.getRequestDispatcher("detail.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

}
