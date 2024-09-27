<%-- 
    Document   : change_password
    Created on : 21.08.2024., 21:22:42
    Author     : korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/component/allcss.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
       
    </head>
    
    <body>
        
        <%@include file="WEB-INF/component/navbar.jsp" %>
        <c:if test="${empty userObj}">
            <c:redirect url="user_login.jsp"></c:redirect>
        </c:if>
        
        
       <div class="container p-4 ">
            <div class="row">
                <div class="col-md-4 offset-md-4">
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
                                <form action="userChangePassword" method="post">
                                    <div class="mb-3"><!-- comment -->
                                        <label>Enter new Password</label><input
                                            type="text" name="newPassword" class="form-control" required><!-- comment -->
                                    </div>
                                    
                                    <div class="mb-3"><!-- comment -->
                                        <label>Enter Old Password</label><input
                                            type="text" name="oldPassword" class="form-control" required><!-- comment -->
                                    </div>
                                    <input type="hidden" value="${userObj.id}" name="uid">
                                    <button class="btn btn-success col-md-12">Change Password</button>
                                </form>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
    </body>
</html>
