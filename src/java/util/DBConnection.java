/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class DBConnection {
    public static Connection createConnection(){
        Connection con = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/buroqexpress";//MySQL db and URL
        String dbUser = "root";
        String dbPassword = "";
        
        try{
            try{
                Class.forName(driver);
            }
            catch(Exception e){
                e.printStackTrace();
            }
            //connect to db
            con = DriverManager.getConnection(url,dbUser, dbPassword);
            System.out.println("Printing connection object "+ con);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
