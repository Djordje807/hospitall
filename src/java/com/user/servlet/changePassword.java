/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userChangePassword")
public class changePassword extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

int uid = Integer.parseInt(req.getParameter("uid"));
String oldPassword = req.getParameter("oldPassword");
String newPassword = req.getParameter("oldPassword");

UserDao dao = new UserDao(DBConnect.getConn());
HttpSession session = req.getSession();

if(dao.checkOdlPassword(uid, oldPassword))
{
    if(dao.changePassword(uid, oldPassword))
    {
        session.setAttribute("succMsg", "Password change succsefuly");
            resp.sendRedirect("change_password.jsp");

    
}else{
    session.setAttribute("errorMsg", "Something wron");
    resp.sendRedirect("change_password.jsp");
}
    }else{
    session.setAttribute("errorMsg", "Something wron");
    resp.sendRedirect("change_password.jsp");
}
    
    
}}
