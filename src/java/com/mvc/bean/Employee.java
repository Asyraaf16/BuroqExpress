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
public class Employee {
    //Employee attribute
    private int emp_id;
    private String emp_name;
    private String emp_email;
    private String emp_phoneNum;
    private String emp_username;
    private String emp_password;

    public Employee() {
    }

    public Employee(int emp_id, String emp_name, String emp_email, String emp_phoneNum, String emp_username, String emp_password) {
        this.emp_id = emp_id;
        this.emp_name = emp_name;
        this.emp_email = emp_email;
        this.emp_phoneNum = emp_phoneNum;
        this.emp_username = emp_username;
        this.emp_password = emp_password;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public void setEmp_email(String emp_email) {
        this.emp_email = emp_email;
    }

    public void setEmp_phoneNum(String emp_phoneNum) {
        this.emp_phoneNum = emp_phoneNum;
    }

    public void setEmp_username(String emp_username) {
        this.emp_username = emp_username;
    }

    public void setEmp_password(String emp_password) {
        this.emp_password = emp_password;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public String getEmp_email() {
        return emp_email;
    }

    public String getEmp_phoneNum() {
        return emp_phoneNum;
    }

    public String getEmp_username() {
        return emp_username;
    }

    public String getEmp_password() {
        return emp_password;
    }
    
    
}
