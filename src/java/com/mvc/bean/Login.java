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
public class Login implements Serializable {
    //Login attribute
    private String Username;
    private String userPassword;
    
    //default constructor
    public Login() {
    }

    //normal constructor
    public Login(String Username, String userPassword) {
        this.Username = Username;
        this.userPassword = userPassword;
    }

    //setter method
    public void setUsername(String Username) {
        this.Username = Username;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
    
    //getter method
    public String getUsername() {
        return Username;
    }

    public String getUserPassword() {
        return userPassword;
    }
    
    
}
