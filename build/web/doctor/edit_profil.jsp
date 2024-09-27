<%-- 
    Document   : edit_profil
    Created on : 21.08.2024., 22:27:52
    Author     : korisnik
--%>

<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
      
        
        <%@include file="../WEB-INF/component/navbar.jsp"%>
        
      <div class="container p-4 ">
            <div class="row">
                <div class="col-md-4">
                    <div class="card paint-card">
                
                            <p class=" text-center fs-3">Change Password</p>
                            
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success fs-5">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                                 <c:if test="${not empty errorMsg}">
                                <p class="text-center text-danger fs-3">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>   
                            
                            <div class="card-body">
                                <form action="../doctChangePassword" method="post">
                                    <div class="mb-3"><!-- comment -->
                                        <label>Enter new Password</label><input
                                            type="text" name="newPassword" class="form-control" required><!-- comment -->
                                    </div>
                                    
                                    <div class="mb-3"><!-- comment -->
                                        <label>Enter Old Password</label><input
                                            type="text" name="oldPassword" class="form-control" required><!-- comment -->
                                    </div>
                                    <input type="hidden" value="${doctObj.id}" name="uid">
                                    <button class="btn btn-success col-md-12">Change Password</button>
                                </form>
                            </div>
                            </div>
                            </div>
                                    <div class="col-md-5 offset-md-2">
                                        <div class="card paint-card">
                                            <p class="text-center fs-3">Edit Profile
                                            <div class="card-body">
                                                <form action="../addDoctor" method="post">
                                    <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Full Name</label>
                                        <input type="text" required name="fullname" class="form-control" value="${doctObj.fullName}">
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">DOB</label>
                                        <input type="date" required name="dob" class="form-control">
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Qualification</label>
                                        <input type="text" required name="qualification" class="form-control" value="${doctObj.qualification}">><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Specialist</label>
                                        <select name="spec" required class="form-control">
                                            <option>${doctObj.specialist}</option>
                                            
                                            <% SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                            List<Specalist> list = dao.getAllSpecialist();
                                            for(Specalist s:list)
                                            {%>
                                            
                                           <option><%=s.getSpecialistName()%></option>

                                            <%}
                                            %>
                                            
                                        </select>
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Email</label>
                                        <input type="text" readonly required name="email" class="form-control" value="${doctObj.emaii}"><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Mob no</label>
                                        <input type="text" required name="mobno" class="form-control" value="${doctObj.mobNo}"><!-- comment -->
                                    </div>
                                    <input type="hidden" name="id" value="${doctObj.id}">
                                
                                    
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>
                                                
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            </div>
    </body>
</html>
