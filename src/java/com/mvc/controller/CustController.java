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
import java.util.LinkedList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class CustController extends HttpServlet {

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
            out.println("<title>Servlet CustController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustController at " + request.getContextPath() + "</h1>");
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
            Customer cust = new Customer();
            String id = request.getParameter("cust_id");
            String username = request.getParameter("cust_username");
            String password = request.getParameter("cust_password");
            String name = request.getParameter("cust_name");
            String pnum = request.getParameter("cust_phoneNum");
            String address = request.getParameter("cust_address");
            String email = request.getParameter("cust_email");
            String op = request.getParameter("operation");


            cust.setCust_id(Integer.parseInt(id));
            cust.setCust_username(username);
            cust.setCust_password(password);
            cust.setCust_name(name);
            cust.setCust_phoneNum(pnum);
            cust.setCust_address(address);
            cust.setCust_email(email);
            
            if (op.equals("UPDT")) { //do create function
                CustomerDAO sd = new CustomerDAO(); //create DAO object
                sd.updateCust(cust); // call addStaff(), to insert data to db
                //store the item on the request-scope
                request.setAttribute("customer", cust);
                request.setAttribute("op", "Update");
                //dispatch to success view
                request.setAttribute("updateSuccess", true);
                RequestDispatcher view = request.getRequestDispatcher("editProfile.jsp");
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
