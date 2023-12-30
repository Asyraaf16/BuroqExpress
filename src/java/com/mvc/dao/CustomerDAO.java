/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.bean.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DBConnection;

/**
 *
 * @author user
 */
public class CustomerDAO {

    public CustomerDAO() {
    }

    public Connection con = DBConnection.createConnection();

    public void registerCustomer(Customer regCust) {
        String username = regCust.getCust_username();
        String password = regCust.getCust_password();
        String name = regCust.getCust_name();
        String pnum = regCust.getCust_phoneNum();
        String address = regCust.getCust_address();
        String email = regCust.getCust_email();

        String sql = "insert into customer (cust_username,cust_password,cust_name,cust_phoneNum,cust_address,cust_email)"
                + " values(?,?,?,?,?,?)";
        PreparedStatement ps;

        try {
            //create preparestatement;
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, pnum);
            ps.setString(5, address);
            ps.setString(6, email);

            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
