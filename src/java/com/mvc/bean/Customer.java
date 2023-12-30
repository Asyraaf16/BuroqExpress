/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.bean;

/**
 *
 * @author user
 */
public class Customer {

    //Customer attribute
    private int cust_id;
    private String cust_username;
    private String cust_password;
    private String cust_name;
    private String cust_phoneNum;
    private String cust_address;
    private String cust_email;

    public Customer() {
    }

    public Customer(int cust_id, String cust_username, String cust_password, String cust_name, String cust_phoneNum, String cust_address, String cust_email) {
        this.cust_id = cust_id;
        this.cust_username = cust_username;
        this.cust_password = cust_password;
        this.cust_name = cust_name;
        this.cust_phoneNum = cust_phoneNum;
        this.cust_address = cust_address;
        this.cust_email = cust_email;
    }

    public void setCust_id(int cust_id) {
        this.cust_id = cust_id;
    }

    public void setCust_username(String cust_username) {
        this.cust_username = cust_username;
    }

    public void setCust_password(String cust_password) {
        this.cust_password = cust_password;
    }

    public void setCust_name(String cust_name) {
        this.cust_name = cust_name;
    }

    public void setCust_phoneNum(String cust_phoneNum) {
        this.cust_phoneNum = cust_phoneNum;
    }

    public void setCust_address(String cust_address) {
        this.cust_address = cust_address;
    }

    public void setCust_email(String cust_email) {
        this.cust_email = cust_email;
    }

    public int getCust_id() {
        return cust_id;
    }

    public String getCust_username() {
        return cust_username;
    }

    public String getCust_password() {
        return cust_password;
    }

    public String getCust_name() {
        return cust_name;
    }

    public String getCust_phoneNum() {
        return cust_phoneNum;
    }

    public String getCust_address() {
        return cust_address;
    }

    public String getCust_email() {
        return cust_email;
    }
    
    
}
