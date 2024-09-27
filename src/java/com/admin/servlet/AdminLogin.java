/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

import com.entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
         try{
             
             String email = req.getParameter("email");
             String password = req.getParameter("password");
             
             HttpSession session = req.getSession();
             
             if("admin@gmail.com".equals(email) && "admin".equals(password)){
                 session.setAttribute("adminObj",new User());
                 resp.sendRedirect("admin/index.jsp");  
             }else{
             session.setAttribute("errorMsg","Invalid email & Password");
                 resp.sendRedirect("admin_login.jsp");  
             }
         }catch(Exception e){
             e.printStackTrace();
             
         }

    }
    
    
}
