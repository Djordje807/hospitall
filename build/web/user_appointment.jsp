<%-- 
    Document   : user_appointment
    Created on : 19.08.2024., 01:18:13
    Author     : korisnik
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Appointment</title>
           <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 8px 0 rgba(0,0,0,0.3);
             }
             .backImg{
                 background: linear-gradient(rgba(0,0,0, .4),rgba(0,0,0, .4)),url("img/bolnica.jpg");
                 height: 20vh;
                 width: 100%;
                 background-size: cover;
                 background-repeat: no-repeat;
             }
         </style>
        <%@include file="WEB-INF/component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="WEB-INF/component/navbar.jsp" %>
        <div class="container-fluid backImg p-5">
            <p class="text-center fs-2 text-white"></p>
        </div>
            <div class="container p-3">
                <div class="row">
                    <div class="col-md-6 p-5">
                        <img alt="" src="img/zz.jpeg">
                    </div>
                    
                    <div class="col-md-6">
                        <div class="card point-card">
                        <div class="card-body">
                            <p class="text-center fs-3">User Appointment</p>
                              <c:if test="${not empty errorMsg}">
                                <p class="fs-4 text-center text-danger ">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>
                                
                                 <c:if test="${not empty succMsg}">
                                <p class="fs-4 text-center text-success fs-3">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>   
                                
                                <form class="row g-3" action="appAppointment" method="post">
                                    
                                    <input type="hidden" name="userid" value="${userObj.id}"><!-- comment -->
                                    
                                    <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Full Name</label>
                                        <input required type="text" class="form-control" name="fullname"><!-- comment -->
                                    </div>
                                    
                                    <div class="col-md-6"><!-- comment -->
                                        <label>Gender</label><select class="form-control" name="gender"
                                            required>
                                              <option value="female">Female</option>
                                            <option value="male">Male</option>
                                          
                                        </select>
                                    </div>
                                    
                                    
                                       <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Age</label>
                                        <input required type="number" class="form-control" name="age"><!-- comment -->
                                    </div>
                                    
                                       <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Appointment Date</label>
                                        <input type="date" class="form-control" required name="appoint_date"><!-- comment -->
                                    </div>
                                    
                                       <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Email</label>
                                        <input required type="email" class="form-control" name="email"><!-- comment -->
                                    </div>
                                    
                                     <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Phone No</label>
                                        <input maxlength="10" required type="number" class="form-control" name="phno"><!-- comment -->
                                    </div>
                                    
                                       <div class="col-md-6"><!-- < -->
                                        <label for="inputEmail4" class="form-label">Diseases</label>
                                        <input required type="text" class="form-control" name="diseases"><!-- comment -->
                                    </div>
                                    
                                    <div class="col-md-6"><!-- comment -->
                                        <label for="inputPassword4" class="form-label">Doctor</label>
                                        <select required class="form-control" name="doct" >
                                            <option value="">select</option>
                                            
                                            <% DoctorDao dao = new DoctorDao(DBConnect.getConn());
                                            List<Doctor> list = dao.getAllDoctor();
                                            for(Doctor d :list){
                                            %>
                                            <option value="<%=d.getId()%>">  <%=d.getFullName()%> (<%=d.getSpecialist()%>)
                                        </option>
                                           <%
                                           }
                                           %>
                                        </select>
                                    </div>
                                    
                                     <div class="col-md-12"><!-- < -->
                                         <label>Full Addres</label>
                                         <textarea required name="address" class="form-control" rows="3"
                                                   cols="2"></textarea>
                                         
                                     </div>
                                    
                                    <c:if test="${empty userObj}">
                                        <a href="user_login.jsp"
                                           class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                                    </c:if>
                                    <c:if test="${not empty userObj}">
                                      
                                        <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                                    </c:if>

                                    
                                </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
                               
    </body>
</html>
