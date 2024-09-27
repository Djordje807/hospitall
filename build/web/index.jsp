<%-- 
    Document   : index
    Created on : 12.08.2024., 13:07:18
    Author     : korisnik
--%>

<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <%@include file="WEB-INF/component/allcss.jsp" %>

    </head>
    <body>
        <%@include file="WEB-INF/component/navbar.jsp" %>
        
     
           
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="img/dr1.jpg" class="d-block w-100" alt="..." height="500">
    </div>
    <div class="carousel-item">
        <img src="img/dd1.jpg" class="d-block w-100" alt="..." height="500">
    </div>
    <div class="carousel-item">
        <img src="img/l3.jpg" class="d-block w-100" alt="..." height="500">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        
        <div class="container p-3">
            <p class="text center fs-2">Kljucne karakteristike nase bolnice</p>
            <div class="row">
                <div class="col-md-8 p-5">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card point-card">
                                <div class="card-body">
                                    <p class="fs-5 fw-bold">100% Sigurnost</p>
                                    <p>Kvalitetna zdravstvena nega: Bolnica  pruža visok nivo medicinske nege, sa stručnim i iskusnim medicinskim osobljem koje koristi savremene medicinske tehnologije i metode.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card point-card">
                                <div class="card-body">
                                     <p class="fs-5 fw-bold">Pacijent na prvom mestu</p>
                                     <p>Pacijent u centru pažnje: Pacijent je u centar pažnje, pružajući im personalizovanu negu i podršku. To uključuje empatiju, poštovanje i pažljivo slušanje potreba pacijenata.</p>
                            </div>
                        </div>
                    </div>
                     
                        <div class="col-md-6 mt-2">
                            <div class="card point-card">
                                <div class="card-body">
                                     <p class="fs-5 fw-bold">Ljubazno osoblje</p>
                                     <p>Veoma prijatno i ljubazno osoblje uz veoma dobru uslugu</p>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-6 mt-2">
                            <div class="card point-card">
                                <div class="card-body">
                                     <p class="fs-5 fw-bold">Korak sa tehnologijom</p>
                                     <p>Koristimo napredne tehnologije koje poboljšavaju efikasnost bolnice.</p>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        
                <div class="col-md-4">
                    <img src="img/rr11.jpg" alt=""/>
                </div>
                </div>
                </div>
        <hr>
             
        <div class="container p-2">
            <p class="text-center fs-2">Nas tim</p>
            
            <div class="row">
                <div class="col-md-3">
                    <div class="card-paint-card">
                        <div class="card-body text-center">
                            <img src="img/x1.jpg" width="250" height="300"/>
                            <p class="fw-bold fs-5">Dr. Petar Jovanov</p>
                            <p class=" fs-7">(Stomatolog)</p>
                        </div>
                    </div>
                </div>
                
                 <div class="col-md-3">
                    <div class="card-paint-card">
                        <div class="card-body text-center">
                            <img src="img/x2.jpg" width="250" height="300"/>
                            <p class="fw-bold fs-5">Dr. Savo Jaksic</p>
                            <p class=" fs-7">(Hirurg)</p>
                        </div>
                    </div>
                </div>
                
                 <div class="col-md-3">
                    <div class="card-paint-card">
                        <div class="card-body text-center">
                            <img src="img/x3.jpg" width="250" height="300"/>
                            <p class="fw-bold fs-5">Dr. Nikola Petrovic</p>
                            <p class=" fs-7">(Anesteziolog)</p>
                        </div>
                    </div>
                </div>
                
                 <div class="col-md-3">
                    <div class="card-paint-card">
                        <div class="card-body text-center">
                            <img src="img/x4.jpg" width="250" height="300"/>
                            <p class="fw-bold fs-5">Primarius Sasa Cuk</p>
                            <p class=" fs-7">(Glavni doctor)</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <%@include file="WEB-INF/component/footer.jsp" %>
        
    </body>
</html>
