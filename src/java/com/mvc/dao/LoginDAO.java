/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.bean.Customer;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import util.DBConnection;

/**
 *
 * @author user
 */
public class LoginDAO {

    public LoginDAO() {
    }
    
     public Connection con = DBConnection.createConnection();

    public String authenticateCust(Customer loginCust) {
        String email = loginCust.getCust_email();
        String password = loginCust.getCust_password();

        Connection con = null;
        Statement stmt = null;
        ResultSet resultSet = null;

        try {
            con = DBConnection.createConnection();
            stmt = con.createStatement();
            String sql;
            sql = "select * from customer where cust_email = '" + email
                    + "'and cust_password = '" + password + "'";

            resultSet = stmt.executeQuery(sql);
            if (resultSet.next()) {
                return "SUCCESS";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
}
