/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.bean.Customer;
import com.mvc.dao.LoginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class LoginServletCust extends HttpServlet {

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
            out.println("<title>Servlet LoginServletCust</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServletCust at " + request.getContextPath() + "</h1>");
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
        //get email & password from login.jsp page
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //creating object Customer
        Customer loginCust = new Customer();

        //setting the email and password through the Customer object
        loginCust.setCust_email(email);
        loginCust.setCust_password(password);

        LoginDAO loginDao = new LoginDAO();//creating object for loginDao
        //Calling authenticateCust function
        String userValidate = loginDao.authenticateCust(loginCust);

        //if function returns success string the user will redirect to homeUser.jsp
        if (userValidate.equals("SUCCESS")) {
            int id = loginDao.access(email, password);
            HttpSession session = request.getSession();//register session
            session.setAttribute("cust_id", id);
            session.setAttribute("email", email);//to set the attribute to the session
            //RequestDispacther is used to redirect to homeUser.jsp page
            // Inside your Servlet after successful login
            
            request.setAttribute("loginSuccess", true);
            RequestDispatcher rd = request.getRequestDispatcher("homeUser.jsp");
            rd.forward(request, response);

        } else {
            //returns invalid user credentials (fail login)
            request.setAttribute("errMessage", userValidate);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);//RequestDispatcher is used to redirect to /login.jsp
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
