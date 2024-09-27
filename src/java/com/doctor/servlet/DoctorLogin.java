/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doctor.servlet;

import com.dao.DoctorDao;

import com.db.DBConnect;
import com.entity.Doctor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

              String email = req.getParameter("email");
             String password = req.getParameter("password");
             
             HttpSession session = req.getSession();
             
             DoctorDao dao = new DoctorDao(DBConnect.getConn());
             Doctor doctor = dao.login(email, password);
             
             if(doctor!=null){
                 session.setAttribute("doctObj",doctor);
                 resp.sendRedirect("doctor/index.jsp");  
             }else{
             session.setAttribute("errorMsg","Invalid email & Password");
                 resp.sendRedirect("doctor_login.jsp");  
             }
    }
    
    
}
