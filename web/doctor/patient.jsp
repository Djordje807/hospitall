<%-- 
    Document   : patient
    Created on : 21.08.2024., 01:30:40
    Author     : korisnik
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
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
        
        <div class="container p-3">
            <div class="row">
                
                <div class="col-md-12">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-3 text-center">Patient Details</p>
                            <c:if test="${not empty errorMsg}">
                                <p class="fs-4 text-center text-danger">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>
                                
                                <c:if test="${ empty succrMsg}">
                                <p class="fs-4 text-center text-success">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Full Name</th>
                                            <th scope="col">Gender</th>
                                            <th scope="col">Age</th>
                                            <th scope="col">Appointment Data</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Mob No</th>
                                            <th scope="col">Diseases</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            Doctor d = (Doctor)session.getAttribute("doctObj");
                                        AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
                                        List<Appointment>list = dao.getAllAppointmentByDoctorLogin(d.getId());
                                        for(Appointment ap :list){
                                        %>
                                        <tr>
                                                <th><%=ap.getFullName() %></th>
                                                <td><%=ap.getGender()%></td>
                                                <td><%=ap.getAge()%></td>
                                                <td><%=ap.getAppoinDate()%></td>
                                                <td><%=ap.getEmail()%></td>
                                                <td><%=ap.getPhNo()%></td>
                                                <td><%=ap.getDiseases()%></td>
                                                <td><%=ap.getStatus()%></td>
                                                <td>
                                                 <a href="#" 
                                                    class="btn btn-success btn-sm">Comment</a>   
                                                </td>
                                        </tr> 
                                        <%
                                            }
                                           %>
                                           

                                    </tbody>
                                </table>
                                           
                        </div>
                    </div>
                </div>
            </div>                
        </div>
    </body>
</html>
