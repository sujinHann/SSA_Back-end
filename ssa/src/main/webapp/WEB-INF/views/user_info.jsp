<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a href="/monitoring" class="nav-item nav-link ">모니터링</a>
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
            <!-- 내용 -->

            <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">소속</th>
                    <th scope="col">소속팀</th>
                    <th scope="col">이름</th>
                    <th scope="col">계급</th>
                    <th scope="col">아이디</th>
                    <th scope="col">수정</th>

                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>수진소방서</td>
                    <td>한수진팀</td>
                    <td>한수진</td>
                    <td>노비</td>
                    <td>slave_sujin</td>
                    <td style="padding-top: 0px;"> <a class="btn" href="/change_info" >
                        <i class="fa-solid fa-pen"></i></a></td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>수진소방서</td>
                    <td>김유리 팀</td>
                    <td>김유리</td>
                    <td>노예</td>
                    <td>slave_yuri</td>
                    <td style="padding-top: 0px;"> <a class="btn" href="/change_info">
                        <i class="fa-solid fa-pen"></i></a></td>
                  </tr>

                </tbody>
              </table>

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

</html> --> -->