/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.bean;

import java.io.Serializable;

/**
 *
 * @author user
 */
public class Admin implements Serializable {
    
    //admin attribute
    private int admin_id;
    private String admin_name;
    private String admin_pnum;
    private String admin_username;
    
    //default constructor
    public Admin() {
    }
    
    //normal constructor
    public Admin(int admin_id, String admin_name, String admin_pnum, String admin_username) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.admin_pnum = admin_pnum;
        this.admin_username = admin_username;
    }

    //setter method
    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public void setAdmin_pnum(String admin_pnum) {
        this.admin_pnum = admin_pnum;
    }

    public void setAdmin_username(String admin_username) {
        this.admin_username = admin_username;
    }
    
    
}
