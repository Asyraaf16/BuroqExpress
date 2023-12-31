/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.dao;

import com.mvc.bean.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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

    public Customer getCust(int cust_id) {
        try {
            String sql = "select * from customer where cust_id = " + cust_id;
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            String username = rs.getString("cust_username");
            String passw = rs.getString("cust_password");
            String name = rs.getString("cust_name");
            String pnum = rs.getString("cust_phoneNum");
            String address = rs.getString("cust_adddress");
            String email = rs.getString("cust_email");
            Customer cust = new Customer(cust_id, username, passw, name, pnum, address, email);
            con.close();
            return cust;
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateCust(Customer updtCust) {
        int cstid = updtCust.getCust_id();
        String username = updtCust.getCust_username();
        String pass = updtCust.getCust_password();
        String name = updtCust.getCust_name();
        String pnum = updtCust.getCust_phoneNum();
        String address = updtCust.getCust_address();
        String email = updtCust.getCust_email();

        String sql = "update customer set cust_username = ?,cust_password = ?,cust_name = ?, cust_phoneNum = ?,"
                + "cust_address = ?,cust_email = ? where cust_id = ?";

        PreparedStatement ps;

        try {
            //create preparestatement
            ps = con.prepareCall(sql);
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, pnum);
            ps.setString(5, address);
            ps.setString(6, email);
            ps.setInt(7, cstid);
            
            ps.executeUpdate();
            con.close();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
