<%-- 
    Document   : index
    Created on : 19.08.2024., 00:37:56
    Author     : korisnik
--%>

<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <%@include file="../WEB-INF/component/allcss.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
       
    </head>
    <body>
     
        
        <%@include file="../doctor/navbar.jsp" %>
        
        <p class="text-center fs-3">Doctor Table</p>

        <%
         Doctor d =(Doctor) session.getAttribute("doctObj");
            DoctorDao dao = new DoctorDao(DBConnect.getConn());
           
        %>
        <div class="container p-5">
            <div class="row">
                <div class="col-md-4 offset-md-2">
                    <div class="card paint-card">
                        <div class="card-body text-center text-success">
                            <i class="fas fa-user-md fa-3x"></i><br>
                            <p class="fs-4 text-center">
                                Doctor <br><%=dao.countDoctor()%>
                            </p>
                        </div>
                        </div>
                    </div>
                
                    <div class="col-md-4 ">
                    <div class="card paint-card">
                        <div class="card-body text-center text-success">
                            <i class="fas fa-calendar-check fa-3x"></i><br>
                            <p class="fs-4 text-center">
                                Total Appointment <br><%=dao.countAppointmentByDoctorId(d.getId()) %>
                            </p>
                        </div>
                        </div>
                    </div>
                
                
                </div>
            </div>
        

        
      
        
        
    </body>
</html>
