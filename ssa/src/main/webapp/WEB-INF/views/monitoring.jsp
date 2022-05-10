<%@page import="com.ssa.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CakeZone - Cake Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="./resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="./resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./resources/css/style.css" rel="stylesheet">

</head>

<body>
   <!-- Topbar Start -->
   <div class="container-fluid px-0 d-none d-lg-block">
    <div class="row gx-0">
        <div class="col-lg-4 text-center bg-secondary py-3">
            <div class="d-inline-flex align-items-center justify-content-center">

                <div class="text-start">
                </div>
            </div>
        </div>

        <!-- 홈페이지 로고 넣기 -->
        <div class="col-lg-4 text-center ">
            <div class="d-inline-flex align-items-center justify-content-center">
                <a href="/main" class="navbar-brand">
                      <img id ="logo_119" src="./resources/img/119 Logo.png" alt="" width="20%">  
                </a>
            </div>
        </div>

        <div class="col-lg-4 text-center bg-secondary py-3">
            <div class="d-inline-flex align-items-center justify-content-center">

                <div class="text-start">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-dark navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-0">
    <a href="/main" class="navbar-brand d-block d-lg-none">
        <h1 class="m-0 text-uppercase text-white"><i class="fa-solid fa-fire-extinguisher fs-1 text-primary me-3"></i>119</h1>
        
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse navbar-scarlet" id="navbarCollapse">
        <div class="navbar-nav ms-auto mx-lg-auto py-0">
            <a href="/main" class="nav-item nav-link ">Main</a>
            <a href="/state_check" class="nav-item nav-link">상태확인</a>
            <a href="/monitoring" class="nav-item nav-link active">모니터링</a>
              <!-- 관리자의 경우 -->
              <a href="/user_info" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
            <a href="/change_info" class="nav-item nav-link">정보수정</a>
        </div>
    </div>
</nav>
<!-- Navbar End -->


    <!-- Products Start -->
    <div class="container-fluid about py-5">
        <div class="container">
            <div class="user_monitoring">
                <div class="user_monitoring_state">
                    <div class="user_monitoring_state_info" >
                    <img id="user_photo" src="./resources/img/team-1.jpg" alt="" width="50%">
                        <div class="user_monitoring_state_info_box">
                            <c:if test="${!empty LoginVo}">
                            <div class="user_monitoring_state_info_box_1">
                                <!-- 이름 -->
                                <h3 class="m-0 text-uppercase ">${LoginVo.user_name }</h3>
                                &nbsp;&nbsp;&nbsp;
                                <!-- 혈액형 -->
                                <h3 class="m-0 text-uppercase ">${LoginVo.user_bloodtype }형</h3>
                            </div>    
                            </c:if>  
                            
                            <div class="user_monitoring_state_info_box_2">
                                <!-- 심박수 -->
                                <div class="heart_rate">
                                <i class="fa-solid fa-heart fs-3"></i>
                                &nbsp;
                                <h5 class="m-0 text-uppercase ">90</h5>
                                </div>
                                &nbsp;&nbsp;
                                <!-- 산소 포화도 -->
                                <div class="SPO2">
                                <h5 class="m-0 text-uppercase ">SPO2</h5>
                                &nbsp;
                                <h5 class="m-0 text-uppercase ">90%</h5>
                                </div>

                            </div>
                        </div>
                    </div>
                    
                    <div class="user_monitoring_state_temp">
                
                       <div class="temp_icon" style="justify-content: center;">
                        <i class=" fa fa-light fa-temperature-full fa-4x text-primary me-3"></i>
                       </div>
                       <div class="temp_current mt-3" style="justify-content: center;">
                        <!-- 온도 넣는 부분 -->
                        <h1 class="m-0 text-uppercase ">119</h1>
                        <h1 class="m-0 text-uppercase ">°C</h1>
                       </div>

                    </div>
                </div>
                <!-- 동영상 넣는 부분 -->
                

<div class="video">
    <div class="video-container">
     
        <iframe width="560" height="315" src="https://www.youtube.com/embed/FQ9nZkQpuNQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    
    </div>
</div>
            </div>
        </div>
    </div>
    <!-- Products End -->


  
  <!-- Footer Start -->
  <div class="container-fluid bg-img text-secondary" style="margin-top: 90px">
    <div class="container">
        <div class="row gx-5">
            <div class="col-lg-4 col-md-6 mb-lg-n5">
                <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary border-inner p-4">
                    <a href="/main" class="navbar-brand">
                         <h1 class="m-0 text-uppercase text-white">119</h1> 
                    </a>

                    <p class="mt-3">관련 글</p>
                </div>
            </div>
            <div class="col-lg-8 col-md-6">
                <div class="row gx-5">
                    <div class="col-lg-4 col-md-12 pt-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Get In Touch</h4>
                        <div class="d-flex mb-2">
                            <i class="bi bi-geo-alt text-primary me-2"></i>
                            <p class="mb-0">30128) 세종특별자치시 정부2청사로 13(나성동)</p>
                        </div>

                        <div class="d-flex mb-2">
                            <i class="bi bi-telephone text-primary me-2"></i>
                            <p class="mb-0">119</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Quick Links</h4>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="/main"><i class="bi bi-arrow-right text-primary me-2"></i>Main</a>
                            <a class="text-secondary mb-2" href="/state_check"><i class="bi bi-arrow-right text-primary me-2"></i>상태확인</a>
                            <a class="text-secondary mb-2" href="/monitoring"><i class="bi bi-arrow-right text-primary me-2"></i>모니터링</a>
                            <a class="text-secondary mb-2" href="/change_info"><i class="bi bi-arrow-right text-primary me-2"></i>정보수정</a>

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                        <h4 class="text-primary text-uppercase mb-4">Newsletter</h4>
                        <p>Amet justo diam dolor rebum lorem sit stet sea justo kasd</p>
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                                <button class="btn btn-primary">Sign Up</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid text-secondary py-4" style="background: #111111;">
    <div class="container text-center">
        <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">Your Site Name</a>. All Rights Reserved. 
        
        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
        Designed by <a class="text-white border-bottom" href="https://htmlcodex.com">HTML Codex</a></p>
        <br>Distributed By: <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
    </div>
</div>
<!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary border-inner py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/waypoints/waypoints.min.js"></script>
    <script src="./resources/lib/counterup/counterup.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./resources/js/main.js"></script>
</body>

</html>