/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author korisnik
 */
public class DBConnect {
    
    private static Connection conn;
    
    public static Connection getConn(){
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
           
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2","root","");
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return conn;
    }
    
}
