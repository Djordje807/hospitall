<%-- 
    Document   : comment
    Created on : 21.08.2024., 15:56:23
    Author     : korisnik
--%>

<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/component/allcss.jsp" %>
               <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
    </head>
    <body>
                <%@include file="../doctor/navbar.jsp" %>

                <div class="container-fluid backImg p-5">
                    <p class="text-center fs-2 text-white"></p>
                </div>
                <div class="container p-3">
                    <div class="row">
                        
                        <div class="col-md-6 offset-md-3">
                            <div class="card paint-card">
                                <div class="card-body">
                                    <p class="text center fs-4">Pattient Comment</p>
                                    
                                    <%
                                        int id = Integer.parseInt(request.getParameter("id"));
                                    AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
                                                Appointment ap = dao.getAppointmentById(id);
                                    
                                    %>
                                    <form class="row" action="../updateStatus" method="post">
                                        
                                        <div class="col-md-6"><!-- comment -->
                                            <label>Patient Name</label><input type="text" required value="<%=ap.getFullName()%>" class="form-control"><!-- comment -->
                                        </div>
                                        
                                         <div class="col-md-6"><!-- comment -->
                                             <label>Age</label><input type="text" required value="<%=ap.getAge()%>" class="form-control"><!-- comment -->
                                        </div>
                                        
                                         <div class="col-md-6"><!-- comment -->
                                            <label>Mob No</label><input type="text" required value="<%=ap.getPhNo()%>" class="form-control"><!-- comment -->
                                        </div>
                                        
                                         <div class="col-md-6"><!-- comment -->
                                            <label>Diseases</label><input type="text" required value="<%=ap.getDiseases()%>" class="form-control"><!-- comment -->
                                        </div>
                                        
                                         <div class="col-md-12"><!-- comment -->
                                             <br>  <label>Comment</label>
                                             <textarea required name="comm" class="form-control" row="3" cols="2"></textarea>
                                        </div>
                                        
                                        <input type="hidden" name="id" value="<%=ap.getId()%>"><!-- comment --><input
                                            type="hidden" name="did" value="<%=ap.getDoctorId()%>"><!-- comment -->
                                        
                                        <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </body>
</html>
