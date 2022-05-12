<%@page import="com.ssa.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CakeZone - Cake Shop Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Oswald:wght@500;600;700&family=Pacifico&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/b269e2b2e2.js"
	crossorigin="anonymous"></script>

<!-- Libraries Stylesheet -->
<link href="./resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

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

					<div class="text-start"></div>
				</div>
			</div>

			<!-- 홈페이지 로고 넣기 -->
			<div class="col-lg-4 text-center ">
				<div class="d-inline-flex align-items-center justify-content-center">
					<a href="/main" class="navbar-brand"> <img id="logo_119"
						src="./resources/img/119 Logo.png" alt="" width="20%">

					</a>
				</div>
			</div>

			<div class="col-lg-4 text-center bg-secondary py-3">
				<div class="d-inline-flex align-items-center justify-content-center">

					<div class="text-start"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-0">
		<a href="/main" class="navbar-brand d-block d-lg-none">
			<h1 class="m-0 text-uppercase text-white">
				<i class="fa-solid fa-fire-extinguisher fs-1 text-primary me-3"></i>119
			</h1>

		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse navbar-scarlet"
			id="navbarCollapse">
			<div class="navbar-nav ms-auto mx-lg-auto py-0">
				<a href="/main" class="nav-item nav-link ">Main</a> <a
					href="/state_check" class="nav-item nav-link active">상태확인</a> <a
					href="/monitoring" class="nav-item nav-link">모니터링</a>
				<!-- 관리자의 경우 -->
				<c:if test="${LoginVo.user_admin eq 'Y'}">
              <a href="/user_info" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
              </c:if>
				<a href="/change_info" class="nav-item nav-link">정보수정</a>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->


	<!-- Team Start -->


	<div class="container-fluid py-5">
		<div class="container">
			<div
				class="section-title position-relative text-center mx-auto mb-5 pb-3"
				style="max-width: 600px;">

				<!--팀 명 -->
				<!-- <h1 class="display-4 text-uppercase">유재열 팀</h1> -->
				<!-- 드롭다운 시작-->
				<div class="d-flex justify-content-center">
					<div class="dropdown">
						<button class="btn btn-secondary btn-lg dropdown-toggle"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							<!-- 팀명 -->
							유재열 팀
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<!-- 여기에 팀 넣어 -->
							<a class="dropdown-item" href="#">한수진팀</a> <a
								class="dropdown-item" href="#">두수진팀</a> <a class="dropdown-item"
								href="#">삼수진팀</a>
						</div>
					</div>
				</div>
				<!-- 드롭다운 끝 -->
			</div>

			<div class="row g-5">
				<c:forEach var="statelist" varStatus="status" items="${state_list}"> 
					<div class="col-lg-4 col-md-6">
						<div class="team-item">
							<div class="position-relative overflow-hidden">
								<img class="img-fluid w-100" src="./resources/img/team-1.jpg"
									alt="">
								<div
									class="team-overlay w-100 h-100 position-absolute top-50 start-50 translate-middle d-flex align-items-center justify-content-center">
									<div class="d-flex align-items-center justify-content-start">
										<!-- 팀원 아이콘 -->
										<!-- <a class="btn btn-lg btn-primary btn-lg-square  mx-1" href="#"><i class="fa-solid fa-user-group"></i></a>  -->
										<!-- 개인 아이콘 -->
										<a class="btn btn-lg btn-primary btn-lg-square  mx-1" href="#"><i
											class="fa-solid fa-user"></i></a> <a
											class="btn btn-lg btn-primary btn-lg-square  mx-1" href="#"><i
											class="fab fa-linkedin-in fw-normal"></i></a>
									</div>
								</div>
							</div>
							<div class="bg-dark border-inner text-center p-4">
								<div class="state_check_state">
									<h4 class="text-uppercase text-primary">${statelist.user_name }</h4>
									&nbsp;&nbsp;
									<h4 class="text-uppercase text-primary">|</h4>
									&nbsp;&nbsp;
									<h4 class="text-uppercase text-primary">${statelist.user_state } 출동,대기..</h4>
								</div>

								<div class="no-g"
									style="display: flex; justify-content: space-between; width: 113px; margin: auto">
									<div style="padding-right: 0px;">
										<!-- 심장박동 수정 예정 -->
										<a class="btn" href="#"
											style="padding-right: 0px; padding: 0; margin: 0;"><i
											class="fa-solid fa-heart"></i></a>
									</div>
									<div class="">
										<a class="btn" href="#" style="padding: 0; margin: 0;">90%</a>
									</div>
									<!-- 비디오 버튼 클릭(모니터링으로 이어짐) -->
									<div class="">
										<a class="btn" href="/monitoring"
											style="padding: 0; margin: 0;"><i
											class="fa-solid fa-video"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Team End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-img text-secondary"
		style="margin-top: 90px">
		<div class="container">
			<div class="row gx-5">
				<div class="col-lg-4 col-md-6 mb-lg-n5">
					<div
						class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary border-inner p-4">
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
								<a class="text-secondary mb-2" href="/main"><i
									class="bi bi-arrow-right text-primary me-2"></i>Main</a> <a
									class="text-secondary mb-2" href="/state_check"><i
									class="bi bi-arrow-right text-primary me-2"></i>상태확인</a> <a
									class="text-secondary mb-2" href="/monitoring"><i
									class="bi bi-arrow-right text-primary me-2"></i>모니터링</a> <a
									class="text-secondary mb-2" href="/change_info"><i
									class="bi bi-arrow-right text-primary me-2"></i>정보수정</a>

							</div>
						</div>
						<div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
							<h4 class="text-primary text-uppercase mb-4">Newsletter</h4>
							<p>Amet justo diam dolor rebum lorem sit stet sea justo kasd</p>
							<form action="">
								<div class="input-group">
									<input type="text" class="form-control border-white p-3"
										placeholder="Your Email">
									<button class="btn btn-primary">Sign Up</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid text-secondary py-4"
		style="background: #111111;">
		<div class="container text-center">
			<p class="mb-0">
				&copy; <a class="text-white border-bottom" href="#">Your Site
					Name</a>. All Rights Reserved.

				<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
				Designed by <a class="text-white border-bottom"
					href="https://htmlcodex.com">HTML Codex</a>
			</p>
			<br>Distributed By: <a class="border-bottom"
				href="https://themewagon.com" target="_blank">ThemeWagon</a>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary border-inner py-3 fs-4 back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/lib/easing/easing.min.js"></script>
	<script src="./resources/lib/waypoints/waypoints.min.js"></script>
	<script src="./resources/lib/counterup/counterup.min.js"></script>
	<script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="./resources/js/main.js"></script>
	<script>
        Array.from(document.getElementsByClassName('dropdown'))
            .forEach(item => {
                let toggles = item.getElementsByClassName('dropdown-toggle');
                if (toggles.length == 0) {
                    return;
                }

                Array.from(toggles).forEach(toggle => {
                    toggle.onclick = () => {
                        Array.from(item.getElementsByClassName('dropdown-menu')).forEach(menu => {
                            if (menu instanceof HTMLDivElement) {
                                if(menu.style.display !== 'none'){
                                    menu.style.display = 'none';
                                } else {
                                    menu.style.display = 'block';
                                }
                            }
                        })
                    }
                })
                Array.forEach()?.forEach
            }) 
    </script>
</body>

</html>