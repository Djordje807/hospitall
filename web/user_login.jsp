<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login</title>
        <style type="text/css">
             .paint-card{
                 box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
             }
         </style>
         <%@include file="WEB-INF/component/allcss.jsp" %>
    </head>
    <body>
       <%@include file="WEB-INF/component/navbar.jsp" %>
       
       <div class="container p-5">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-4 text-center">User Login</p>
                            
                                <c:if test="${not empty succMsg}">
                                <p class="text-center text-success fs-5">${succMsg}</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                                 <c:if test="${not empty errorMsg}">
                                <p class="text-center text-danger fs-3">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session"/>
                            </c:if>     
                                
                                <form action="userLogin" method="post">
                                 
                                    
                                    
                                    <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Email addres</label><input required
                                                    name="email" type="email" class="form-control"> 
                                    </div>
                                    
                                    <div class="mb-3"><!-- comment -->
                                        <label class="form-label">Password</label><input required
                                                    name="password" type="password" class="form-control"> 
                                    </div>
                                    
                                    <button type="Submit" class="btn bg-success text-white col-md-12">Login</button>
                                </form>     
                            <br><!-- comment -->
                            Nemate nalog ? <a href="signup.jsp" class="text-decoration-none">    Kreiraj </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
