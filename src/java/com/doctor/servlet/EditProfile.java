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

@WebServlet ("/doctorUpdateProfil")
public class EditProfile extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

try{
       String fullName = req.getParameter("fullname");
       String dob = req.getParameter("dob");
       String qualification = req.getParameter("qualification");
       
       String spec = req.getParameter("spec");
       
       String email = req.getParameter("email");
       String mobno = req.getParameter("mobno");
       
       
       int id = Integer.parseInt(req.getParameter("id"));
       
       Doctor d = new Doctor(id,fullName,dob,qualification,spec,email,mobno,"");
       DoctorDao dao = new DoctorDao(DBConnect.getConn());
       
       HttpSession session = req.getSession();
       if(dao.editDoctorProfile(d)){
           session.setAttribute("succMsgd", "Doctor Update succsessfuly");
           resp.sendRedirect("doctor/edit_profil.jsp");
       }else{
           session.setAttribute("errorMsgd", "Something wrong on server");
                     resp.sendRedirect("doctor/edit_profil.jsp");

           
       }
       
   }catch
       (Exception e){
               e.printStackTrace();
   }
    }
    
}



