/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doctor.servlet;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

try{
    int id = Integer.parseInt(req.getParameter("id"));
    int did = Integer.parseInt(req.getParameter("did"));
    String comm = req.getParameter("comm");
    
    AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
    HttpSession session = req.getSession();
    
    if(dao.uploadCommentStatus(id, did, comm))
    {
      session.setAttribute("succMsg", "Commnet update");
      resp.sendRedirect("doctor/patient.jsp");
    }else{
         session.setAttribute("errorMsg", "Something wrong on server");
      resp.sendRedirect("doctor/patient.jsp");
    }
}catch (Exception e){
    e.printStackTrace();
}
    }
    
}
