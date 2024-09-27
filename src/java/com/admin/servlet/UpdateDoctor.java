/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

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


@WebServlet("/updateDoctor")
public class UpdateDoctor extends  HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

try{
       String fullName = req.getParameter("fullname");
       String dob = req.getParameter("dob");
       String qualification = req.getParameter("qualification");
       
       String spec = req.getParameter("spec");
       
       String email = req.getParameter("email");
       String mobno = req.getParameter("mobno");
       String password = req.getParameter("password");
       
       int id = Integer.parseInt(req.getParameter("id"));
       
       Doctor d = new Doctor(id,fullName,dob,qualification,spec,email,mobno,password);
       DoctorDao dao = new DoctorDao(DBConnect.getConn());
       
       HttpSession session = req.getSession();
       if(dao.updateDoctor(d)){
           session.setAttribute("succMsg", "Doctor Update succsessfuly");
           resp.sendRedirect("admin/view_doctor.jsp");
       }else{
           session.setAttribute("errorMsg", "Something wrong on server");
           resp.sendRedirect("admin/view_doctor.jsp");
           
       }
       
   }catch
       (Exception e){
               e.printStackTrace();
   }
    }
    
}

