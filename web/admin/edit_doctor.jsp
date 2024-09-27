<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../WEB-INF/component/allcss.jsp" %>
         <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
    
   
    </head>
    <body>
        <%@include  file="../admin/navbar.jsp" %>
       
       <div class="container-fluid p-3">
<div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card point-card">
                    <div class="card-body">
                        <p class="fs-3 text-center">Edit Doctor Details</p>
                  <c:if test="${not empty errorMsg}">
                                <p class="text-center text-danger">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>
                                
                                 <c:if test="${not empty succMsg}">
                                     <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                              
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>  
                                     
                                     
                                     <%
                                      int id = Integer.parseInt(request.getParameter("id"));
                                         DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                    Doctor d = dao2.getDoctorById(id);
                                     %>
                                     
                                <form action="../updateDoctor" method="post">
                                    <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Full Name</label>
                                        <input type="text" required name="fullname" class="form-control" value="<%=d.getFullName() %>" ><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">DOB</label>
                                        <input type="date" value="<%=d.getDob()%>" required name="dob" class="form-control"  >
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Qualification</label>
                                        <input type="text" required name="qualification" value= "<%=d.getQualification()%>" class="form-control"><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Specialist</label>
                                        <select name="spec" required class="form-control">
                                            <option>"<%=d.getSpecialist()%>"</option>
                                            
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
                                        <input type="text" value= "<%=d.getEmail()%>" required name="email" class="form-control"><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Mob no</label>
                                        <input type="text" value= "<%=d.getMobNo()%>"  required name="mobno" class="form-control"><!-- comment -->
                                    </div>
                                    
                                     <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Password</label>
                                        <input  required name="password" value= "<%=d.getPassword()%>" type="text" class="form-control"><!-- comment -->
                                    </div>
                                    <input type="hidden" name="id" value="<%=d.getId() %>">
                                    <button type="submit" class="btn btn-primary col-md-12">Update</button>
                                </form>
                    </div>
                </div>
            </div>
         
        </div>
    </body>
</html>



