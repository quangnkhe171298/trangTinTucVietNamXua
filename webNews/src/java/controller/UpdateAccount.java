/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDao;
import dal.NewsDao;
import dal.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.News;
import model.User;

/**
 *
 * @author kiemq
 */
public class UpdateAccount extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String roleId = req.getParameter("roles");
        String fullname = req.getParameter("fullname");      
        UserDao dao = new UserDao();
        dao.updateAccount(new User( Integer.parseInt(id), username, password, fullname, Integer.parseInt(roleId) )); 
        resp.sendRedirect("accountmanagement");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        UserDao Udao = new UserDao();
        List<User> listU = Udao.getFullUser();
        req.setAttribute("listU", listU);
        User user = Udao.getUserById(Integer.parseInt(id));
        req.setAttribute("user", user);
        req.getRequestDispatcher("updateAccount.jsp").forward(req, resp);
    }

}
