<%-- 
    Document   : index
    Created on : 13.08.2024., 23:34:08
    Author     : korisnik
--%>

<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
        <%@include file="../WEB-INF/component/allcss.jsp" %>
    </head>
    <body>
        
        <%@include file="../admin/navbar.jsp" %>
        
        <c:if test="${ empty adminObj}">
            <c:redirect url="../admin_login.jsp"></c:redirect>
                        
        </c:if>
        
         <div class="container p-5">
             <p class="text-center fs-3">Admin Dashboard
            
             <c:if test="${not empty succMsg}">
                                <p class="text-center text-success fs-5">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                                 <c:if test="${not empty errorMsg}">
                                <p class="text-center text-danger fs-3">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>  
                                
                                <%DoctorDao dao = new DoctorDao(DBConnect.getConn()); 
                                
                                %>
                                
                                <div class="row">
                <div class="col-md-4">
                    <div class="card paint-card">
                        <div class="card-body text-center text-success">
                            <p class="fs-4 text-center"><i class="fa fa-user-md" aria-hidden="true"></i>  Doctor <br><%=dao.countDoctor()%> </p> 
                        </div>
                    </div>
                </div>
                                    
                    <div class="col-md-4">
                    <div class="card paint-card">
                        <div class="card-body text-center text-success">
                            <p class="fs-4 text-center"><i class="fas fa-user-circle fa-1x" aria-hidden="true"></i>User <br> <%=dao.countUser()%>   </p> 
                        </div>
                    </div>
                </div>
                                    
                                     <div class="col-md-4 ">
                    <div class="card paint-card">
                        <div class="card-body text-center text-success">
                            <p class="fs-4 text-center"><i class="fa fa-calendar-check fa-1x"></i> Appointment <br> <%=dao.countAppointment()%>    </p> 
                        </div>
                    </div>
                </div>
                                    
                                    <div class="col-md-4 mt-2">        
                                        <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <div class="card-body text-center text-success">
                            <p class="fs-4 text-center"><i class="fa fa-calendar-check fa-1x"></i>
  Specialist<br> <%=dao.countSpecialist()%>   </p> 
                        </div>
                    </div>
                </div>
                </div>
                </div>
     
        

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form action="../addSpecialist" method="post">
              <div class="form-group"><!-- comment -->
                  <label>Enter Specialist Name</label>
                  <input type="text" name="specName" class="form-control">
              </div>
              <div class="text-center mt-3"><!-- comment -->
                   <button type="submit" class="btn btn-primary">Add</button>
              </div>
             
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>

    </body>
</html>
