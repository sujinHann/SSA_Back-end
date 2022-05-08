<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="en">

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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="./resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./resources/css/style.css" rel="stylesheet">

    <!-- jQuery  -->
    <script src="./resources/js/jquery-3.6.0.min.js"></script>

    <style>
        .map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
        .map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
        .map_wrap {position:relative;width:100%;height:500px;}
        .bg_white {background:#fff;}
        #menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
        #menu_wrap .option{text-align: center;}
        #menu_wrap .option p {margin:10px 0;}  
        #menu_wrap .option button {margin-left:5px;}
        #placesList li {list-style: none;}
        #placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
        #placesList .item span {display: block;margin-top:4px;}
        #placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
        #placesList .item .info{padding:10px 0 10px 55px;}
        #placesList .info .gray {color:#8a8a8a;}
        #placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
        #placesList .info .tel {color:#009900;}
        #placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
        #placesList .item .marker_1 {background-position: 0 -10px;}
        #placesList .item .marker_2 {background-position: 0 -56px;}
        #placesList .item .marker_3 {background-position: 0 -102px}
        #placesList .item .marker_4 {background-position: 0 -148px;}
        #placesList .item .marker_5 {background-position: 0 -194px;}
        #placesList .item .marker_6 {background-position: 0 -240px;}
        #placesList .item .marker_7 {background-position: 0 -286px;}
        #placesList .item .marker_8 {background-position: 0 -332px;}
        #placesList .item .marker_9 {background-position: 0 -378px;}
        #placesList .item .marker_10 {background-position: 0 -423px;}
        #placesList .item .marker_11 {background-position: 0 -470px;}
        #placesList .item .marker_12 {background-position: 0 -516px;}
        #placesList .item .marker_13 {background-position: 0 -562px;}
        #placesList .item .marker_14 {background-position: 0 -608px;}
        #placesList .item .marker_15 {background-position: 0 -654px;}
        #pagination {margin:10px auto;text-align: center;}
        #pagination a {display:inline-block;margin-right:10px;}
        #pagination .on {font-weight: bold; cursor: default;color:#777;}
        </style>

</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid px-0 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-4 text-center bg-secondary py-3">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <!-- <i class="bi bi-envelope fs-1 text-primary me-3"></i> -->
                    <div class="text-start">
                        <!-- <h6 class="text-uppercase mb-1">Email Us</h6>
                        <span>info@example.com</span> -->
                    </div>
                </div>
            </div>

            <!-- 홈페이지 로고 넣기 -->
            <div class="col-lg-4 text-center ">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <a href="main.html" class="navbar-brand">
                        <img id ="logo_119" src="./resources/img/119 Logo.png" alt="" width="20%">
                        
                        <!-- <h1 class="m-0 text-uppercase text-white"></i>119</h1>  -->
                        <!-- 아이콘<i class="fa fa-birthday-cake fs-1 text-dark me-3"> -->
                    </a>
                </div>
            </div>

            <div class="col-lg-4 text-center bg-secondary py-3">
                <div class="d-inline-flex align-items-center justify-content-center">
                    <!-- <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i> -->
                    <div class="text-start">
                        <!-- <h6 class="text-uppercase mb-1">Call Us</h6>
                        <span>+012 345 6789</span> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="main.html" class="navbar-brand d-block d-lg-none">
            <h1 class="m-0 text-uppercase text-white"><i
                    class="fa-solid fa-fire-extinguisher fs-1 text-primary me-3"></i>119</h1>

        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto mx-lg-auto py-0">
                <a href="main.html" class="nav-item nav-link active">Main</a>
                <a href="state_check.html" class="nav-item nav-link">상태확인</a>
                <a href="monitoring.html" class="nav-item nav-link">모니터링</a>
                <a href="change_info.html" class="nav-item nav-link">정보수정</a>
                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="service.html" class="dropdown-item">Our Service</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact Us</a> -->
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- 검은색 메뉴 삭제 예정 -->
    <!-- Hero Start -->
    <!-- <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="font-secondary text-primary mb-4">Super Crispy</h1>
                    <h1 class="display-1 text-uppercase text-white mb-4">CakeZone</h1>
                    <h1 class="text-uppercase text-white">The Best Cake In London</h1>
                    <div class="d-flex align-items-center justify-content-center justify-content-lg-start pt-5">
                        <a href="" class="btn btn-primary border-inner py-3 px-5 me-5">Read More</a>
                        <button type="button" class="btn-play" data-bs-toggle="modal"
                            data-src="https://www.youtube.com/embed/DWRcNpR6Kdc" data-bs-target="#videoModal">
                            <span></span>
                        </button>
                        <h5 class="font-weight-normal text-white m-0 ms-4 d-none d-sm-block">Play Video</h5>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Hero End -->


    <!-- Video Modal Start -->
    <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- 16:9 aspect ratio -->
                    <div class="ratio ratio-16x9">
                        <iframe class="embed-responsive-item" src="" id="video" allowfullscreen
                            allowscriptaccess="always" allow="autoplay"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Video Modal End -->


    <!-- About Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <!-- 메뉴바2 -->
            <!-- <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;"> -->
            <!-- <h2 class="text-primary font-secondary">About Us</h2> -->
            <!-- <h1 class="display-4 text-uppercase">MAIN</h1> -->
            <!-- </div> -->

            <!-- 내용 -->
            <div class="row gx-5">
                <div class="container">
                    <!-- <div class="row">
                        <div class="col">
                             select 태그의 option의 value값을 받아와서 비동기 통신으로 값을 보낸다음에 문자열을 조합해서 키워드에 넣으면 될듯 (아마도)
                            <select class="form-select" aria-label="Default select example">
                                <option selected>시/도</option>
                                <option value="서울특별시">서울특별시</option>
                                <option value="부산광역시">부산광역시</option>
                                <option value="대구광역시">대구광역시</option>
                                <option value="인천광역시">인천광역시</option>
                                <option value="광주광역시">광주광역시</option>
                                <option value="대전광역시">대전광역시</option>
                                <option value="울산광역시">울산광역시</option>
                                <option value="세종특별자치시">세종특별자치시</option>
                                <option value="경기도">경기도</option>
                                <option value="강원도">강원도</option>
                                <option value="충청북도">충청북도</option>
                                <option value="충청남도">충청남도</option>
                                <option value="전라북도">전라북도</option>
                                <option value="전라남도">전라남도</option>
                                <option value="경상북도">경상북도</option>
                                <option value="경상남도">경상남도</option>
                                <option value="제주특별자치도">제주특별자치도</option>
                            </select>
                        </div>
                        <div class="col">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>시/군/구</option>
                                <option value="1">강남구</option>
                                <option value="2">강서구</option>
                                <option value="3">강동구</option>
                            </select>
                        </div>
                        <div class="col">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>소방서</option>
                                <option value="1">강남소방서</option>
                                <option value="2">강서소방서</option>
                                <option value="3">강동소방서</option>
                            </select>
                        </div>
                    </div> -->
                </div>
                <!-- 테이블 써서 3가지 쭉 -->
                <!--  지도 -->

                <h2 style="text-align: center;"><b>소속 소방서</b></h2><br>

                <div id="menu_wrap">
                    <div class="option">
                        <div class="search">
                            <form onsubmit="searchPlaces(); return false;">
                                <input class = "fire_station_location" style="width: 300px;" type="text" value="" id="keyword" size="30" placeholder="소속 소방서를 입력해주세요"> 
                                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                                <button type="submit" style="display: none;">검색하기</button> 
                            </form>
                        </div>
                    </div>
                    <hr>
                    <ul id="placesList"></ul>
                    <div id="pagination"></div>
                </div>
            </div>


            </div>
            <div id="map" style="width:600px;height:500px; margin: auto;"></div>

            <script type="text/javascript">

            </script>
            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c945b968448a430f74277f54514e4ec1&libraries=services"></script>


            <script>
                // 마커를 담을 배열입니다
                var markers = [];

                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = {
                        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                        level: 0 // 지도의 확대 레벨
                    };

                // 지도를 생성합니다    
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // 장소 검색 객체를 생성합니다
                var ps = new kakao.maps.services.Places();

                // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
                var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

                // 키워드로 장소를 검색합니다
                searchPlaces();

                // 키워드 검색을 요청하는 함수입니다
                function searchPlaces() {

                    var keyword = document.getElementById('keyword').value;

                

                    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
                    ps.keywordSearch(keyword, placesSearchCB);
                }

                // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                function placesSearchCB(data, status, pagination) {
                    if (status === kakao.maps.services.Status.OK) {

                        // 정상적으로 검색이 완료됐으면
                        // 검색 목록과 마커를 표출합니다
                        displayPlaces(data);

                        
                       

                    } 
                }

                // 검색 결과 목록과 마커를 표출하는 함수입니다
                function displayPlaces(places) {

                    var listEl = document.getElementById('placesList'),
                        menuEl = document.getElementById('menu_wrap'),
                        fragment = document.createDocumentFragment(),
                        bounds = new kakao.maps.LatLngBounds(),
                        listStr = '';

                    // 검색 결과 목록에 추가된 항목들을 제거합니다
                    removeAllChildNods(listEl);

                    // 지도에 표시되고 있는 마커를 제거합니다
                    removeMarker();

                    for (var i = 0; i < places.length; i++) {

                        // 마커를 생성하고 지도에 표시합니다
                        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                            marker = addMarker(placePosition, i),
                            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                        // LatLngBounds 객체에 좌표를 추가합니다
                        bounds.extend(placePosition);

                        // 마커와 검색결과 항목에 mouseover 했을때
                        // 해당 장소에 인포윈도우에 장소명을 표시합니다
                        // mouseout 했을 때는 인포윈도우를 닫습니다
                        (function (marker, title) {
                            kakao.maps.event.addListener(marker, 'mouseover', function () {
                                displayInfowindow(marker, title);
                            });

                            kakao.maps.event.addListener(marker, 'mouseout', function () {
                                infowindow.close();
                            });

                            itemEl.onmouseover = function () {
                                displayInfowindow(marker, title);
                            };

                            itemEl.onmouseout = function () {
                                infowindow.close();
                            };
                        })(marker, places[i].place_name);

                        fragment.appendChild(itemEl);
                    }

                    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                    listEl.appendChild(fragment);
                    menuEl.scrollTop = 0;

                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                    map.setBounds(bounds);
                }

                // 검색결과 항목을 Element로 반환하는 함수입니다
                function getListItem(index, places) {

                    var el = document.createElement('li'),
                        itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
                            '<div class="info">' +
                            '   <h5>' + places.place_name + '</h5>';

                    // if (places.road_address_name) {
                    //     itemStr += '    <span>' + places.road_address_name + '</span>' +
                    //         '   <span class="jibun gray">' + places.address_name + '</span>';
                    // } else {
                    //     itemStr += '    <span>' + places.address_name + '</span>';
                    // }

                    // itemStr += '  <span class="tel">' + places.phone + '</span>' +
                    //     '</div>';

                    // el.innerHTML = itemStr;
                    // el.className = 'item';

                    return el;
                }

                // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                function addMarker(position, idx, title) {
                    var imageSrc = './img/119marker.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(60, 50),  // 마커 이미지의 크기
                        imgOptions = {
                            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                        },
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                        marker = new kakao.maps.Marker({
                            position: position, // 마커의 위치
                            image: markerImage
                        });

                    marker.setMap(map); // 지도 위에 마커를 표출합니다
                    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

                    return marker;
                }

                // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                function removeMarker() {
                    for (var i = 0; i < markers.length; i++) {
                        markers[i].setMap(null);
                    }
                    markers = [];
                }

                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                function displayPagination(pagination) {
                    var paginationEl = document.getElementById('pagination'),
                        fragment = document.createDocumentFragment(),
                        i;

                    // 기존에 추가된 페이지번호를 삭제합니다
                    while (paginationEl.hasChildNodes()) {
                        paginationEl.removeChild(paginationEl.lastChild);
                    }

                    for (i = 1; i <= pagination.last; i++) {
                        var el = document.createElement('a');
                        el.href = "#";
                        el.innerHTML = i;

                        if (i === pagination.current) {
                            el.className = 'on';
                        } else {
                            el.onclick = (function (i) {
                                return function () {
                                    pagination.gotoPage(i);
                                }
                            })(i);
                        }

                        fragment.appendChild(el);
                    }
                    paginationEl.appendChild(fragment);
                }

                // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
                // 인포윈도우에 장소명을 표시합니다
                function displayInfowindow(marker, title) {
                    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

                    infowindow.setContent(content);
                    infowindow.open(map, marker);
                }

                // 검색결과 목록의 자식 Element를 제거하는 함수입니다
                function removeAllChildNods(el) {
                    while (el.hasChildNodes()) {
                        el.removeChild(el.lastChild);
                    }
                }
            </script>






            <!-- Footer Start -->
            <div class="container-fluid bg-img text-secondary" style="margin-top: 90px">
                <div class="container">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-6 mb-lg-n5">
                            <div
                                class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary border-inner p-4">
                                <a href="main.html" class="navbar-brand">
                                    <h1 class="m-0 text-uppercase text-white">119</h1>
                                </a>
                                <!-- <img src="img/119 Logo.png" width="10%" alt="" title="119 안전신고센터 하단 로고"> -->
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
                                    <!-- <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">info@example.com</p>
                            </div> -->
                                    <div class="d-flex mb-2">
                                        <i class="bi bi-telephone text-primary me-2"></i>
                                        <p class="mb-0">119</p>
                                    </div>
                                    <!-- <div class="d-flex mt-4">
                                <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-facebook-f fw-normal"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square border-inner rounded-0 me-2" href="#"><i class="fab fa-linkedin-in fw-normal"></i></a>
                            </div> -->
                                </div>
                                <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                                    <h4 class="text-primary text-uppercase mb-4">Quick Links</h4>
                                    <div class="d-flex flex-column justify-content-start">
                                        <a class="text-secondary mb-2" href="main.html"><i
                                                class="bi bi-arrow-right text-primary me-2"></i>Main</a>
                                        <a class="text-secondary mb-2" href="state_check"><i
                                                class="bi bi-arrow-right text-primary me-2"></i>상태확인</a>
                                        <a class="text-secondary mb-2" href="monitoring.html"><i
                                                class="bi bi-arrow-right text-primary me-2"></i>모니터링</a>
                                        <a class="text-secondary mb-2" href="change_info.html"><i
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
            <div class="container-fluid text-secondary py-4" style="background: #111111;">
                <div class="container text-center">
                    <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">Your Site Name</a>. All Rights
                        Reserved.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed by <a class="text-white border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </p>
                    <br>Distributed By: <a class="border-bottom" href="https://themewagon.com"
                        target="_blank">ThemeWagon</a>
                </div>
            </div>
            <!-- Footer End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-primary border-inner py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/waypoints/waypoints.min.js"></script>
    <script src="./resources/lib/counterup/counterup.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./resources/js/main.js"></script>

</body>
</html>