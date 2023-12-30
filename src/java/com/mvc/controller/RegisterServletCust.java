/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import com.mvc.bean.Customer;
import com.mvc.dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class RegisterServletCust extends HttpServlet {

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
            out.println("<title>Servlet RegisterServletCust</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServletCust at " + request.getContextPath() + "</h1>");
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
        try {
            //retrieve from parameters
            Customer regCust = new Customer();
            //get username & password from login.jsp page
            String username = request.getParameter("cust_username");
            String password = request.getParameter("cust_password");
            String name = request.getParameter("cust_name");
            String pnum = request.getParameter("cust_phoneNum");
            String address = request.getParameter("cust_address");
            String email = request.getParameter("cust_email");
            String op = request.getParameter("operation");

            regCust.setCust_username(username);
            regCust.setCust_password(password);
            regCust.setCust_name(name);
            regCust.setCust_phoneNum(pnum);
            regCust.setCust_address(address);
            regCust.setCust_email(email);            

            if (op.equals("REG")) { //do create function
                CustomerDAO reg = new CustomerDAO(); //create DAO object
                reg.registerCustomer(regCust); // call addStaff(), to insert data to db
                //store the item on the request-scope
                request.setAttribute("customer", reg);
                request.setAttribute("op", "Add");
                //dispatch to success view
                request.setAttribute("registerSuccess", true);
                RequestDispatcher view = request.getRequestDispatcher("login.jsp");
                view.forward(request, response);
            }

        } catch (Exception e) {
            System.out.println(e);
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
