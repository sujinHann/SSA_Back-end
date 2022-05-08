<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>SSA_Register_</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- 아이콘 -->
    <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>
    <!-- css코드 -->
    <link rel="stylesheet" href="./resources/css/SSA.css">
   
</head>

<body class = "reg_body">
    <div class="justify-content-center">

        <div class="col-lg-17">
            <div class="p-5">
                <div class="d-flex align-items-center justify-content-center">

                    <!-- 119로고 및 회원가입 문구 -->
                    <div>
                        <img  class ="reg_img" src="./resources/img/119 Logo.png"><br>

                    </div>

                    <div class="reg_text"><b>회원가입</b></div>

                </div>
                <hr>
                <!-- form 태그 -->
                <form action="Join" method="post" class ="reg_form">

                    <!-- 지역 아코디언  -->
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    지역
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show">
                                <!-- 아코디언 바디 -->
                                <!-- 추가 : 시/도 를 누르면 해당 지역에 맞는 다음지역 출력하도록 해야함 -->
                                <!-- 지역마다 시/군/구 , 읍/면/동 찾아서 넣어야함 -->
                                <div class="accordion-body">
                                    <div class="location_city">
                                        <select class="form-control" name="user_fs_location">
                                            <option>시/도</option>
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
                                    <div class="location_county" name="user_fs_location" >
                                        <select class="form-control">
                                            <option>시/군/구</option>
                                            <option>...</option>

                                        </select>
                                    </div>
                                    <div class="location_town" name="user_fs_location">
                                        <select class="form-control">
                                            <option>읍/면/동</option>
                                            <option>...</option>


                                        </select>


                                    </div><br>

                                    <!-- 소속 소방서도 드롭다운으로해서 위에 지역 선택시 그 지역에 있는 소방서만 추출되도록 해야함 -->
                                    <div class="form-group">
                                        <label for="fire_station_title">소방서</label>
                                        <input type="text" class="form-control" id="fire_station" name="user_fs"
                                            placeholder="소속 소방서를 입력하세요">
                                    </div>



                                </div><br>
                            </div>
                        </div>

                    </div><br>
                    <!-- 아이디 폼 -->
                    <div class="form-group">
                        <label for="userId_title">아이디</label>
                        <input type="id" class="form-control" id="userId" name="user_id" placeholder="아이디를 입력해주세요" required oninput = "checkId()" >
                        <small id="idhelp" class="form-text text-muted">4~12자 이내 영문 소문자 숫자</small>
                                          
                        
                    </div><br>
                    <!-- 비밀번호 폼 -->
                    <div class="form-group">
                        <label for="passowrd_title">비밀번호</label>
                        <input type="password" class="form-control" id="password" name="user_pw" placeholder="비밀번호를 입력해주세요">
                    </div><br>
                    <!-- 비밀번호 재확인 폼 -->
                    <div class="form-group">
                        <label for="passwordCheck_title">비밀번호 확인</label>
                        <input type="password" class="form-control" id="passwordCheck" placeholder="비밀번호를 다시 입력해주세요">
                    </div><br>
                    <!-- 이름 폼 -->
                    <div class="form-group">
                        <label for="userName_title">이름</label>
                        <input type="text" class="form-control" id="userName" name="user_name" placeholder="이름을 입력하세요">
                    </div>

                    <!-- 생년월일 폼  -->
                    <!-- 년도는 다 넣기 귀찮아서 나중에 이클립스로 다시 연동할 때 for문으로 돌릴예정 -->
                    <!-- 월 선택 시 그 월에 맞는 일수가 나오도록 해야함 -->
                    <label class="form-label mt-4">생년월일</label>
                    <div class="bir_yy">
                        <select class="form-control" name="user_birthdate">
                            <option>년도</option>
                            <option value="2022">2022</option>
                            <option value="2021">2021</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>

                        </select>
                    </div>
                    <div class="bir_mm">
                        <select class="form-control" name="user_birthdate">
                            <option>월</option>
                            <option value="m_1">1</option>
                            <option value="m_2">2</option>
                            <option value="m_3">3</option>
                            <option value="m_4">4</option>
                            <option value="m_5">5</option>
                            <option value="m_6">6</option>
                            <option value="m_7">7</option>
                            <option value="m_8">8</option>
                            <option value="m_9">9</option>
                            <option value="m_10">10</option>
                            <option value="m_11">11</option>
                            <option value="m_12">12</option>
                            
                        </select>
                    </div>
                    <div class="bir_dd">
                        <select class="form-control" name="user_birthdate">
                            <option>일</option>
                            <option value="d_1">1</option>
                            <option value="d_2">2</option>
                            <option value="d_3">3</option>
                            <option value="d_4">4</option>
                            <option value="d_5">5</option>
                            <option value="d_6">6</option>
                            <option value="d_7">7</option>
                            <option value="d_8">8</option>
                            <option value="d_9">9</option>
                            <option value="d_10">10</option>
                            <option value="d_11">11</option>
                            <option value="d_12">12</option>
                            <option value="d_13">13</option>
                            <option value="d_14">14</option>
                            <option value="d_15">15</option>
                            <option value="d_16">16</option>
                            <option value="d_17">17</option>
                            <option value="d_18">18</option>
                            <option value="d_19">19</option>
                            <option value="d_20">20</option>
                            <option value="d_21">21</option>
                            <option value="d_22">22</option>
                            <option value="d_23">23</option>
                            <option value="d_24">24</option>
                            <option value="d_25">25</option>
                            <option value="d_26">26</option>
                            <option value="d_27">27</option>
                            <option value="d_28">28</option>
                            <option value="d_29">29</option>
                            <option value="d_30">30</option>
                            <option value="d_31">31</option>


                        </select>


                    </div>
                    <!-- 사용자 주소 폼 -->
                    <label class="form-label mt-4">주소</label>
                    <div class="location_city">
                        <select class="form-control" name="user_address">
                            <option>시/도</option>
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
                    <div class="location_county">
                        <select class="form-control" name="user_address">
                            <option>시/군/구</option>
                            <option>...</option>

                        </select>
                    </div>
                    <div class="location_town">
                        <select class="form-control" name="user_address">
                            <option>읍/면/동</option>
                            <option>...</option>


                        </select>


                    </div><br>
                    <div class="form-group">
                        <label for="fire_station_title">상세주소</label>
                        <input type="text" class="form-control" id="detailAddress" name="user_address2"
                            placeholder="상세주소를 입력해주세요" >
                    </div>
                    <!-- 성별 폼 -->
                    <div>
                        <label class="form-label mt-4">성별</label>
                    </div>

                    <div class="genderType">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="user_gender" id="gender"
                                value="men">
                            <label class="form-check-label" for="inlineRadio1">남자</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="user_gender" id="gender"
                                value="women">
                            <label class="form-check-label" for="inlineRadio2">여자</label>
                        </div>

                    </div><br>

                    <!-- 혈액형 폼 -->

                    <label class="form-label mt-4">혈액형</label>
                    <div class="bloodType">
                        <select class="form-control" name="user_bloodtype">
                            <option>선택</option>
                            <option value="A">A형</option>
                            <option value="AB">AB형</option>
                            <option value="B">B형</option>
                            <option value="O">O형</option>


                        </select>
                    </div><br><br><br>

                    <!-- 가입 버튼 -->
                    <div class = "btn_reg">
                        <button type="submit" class="btn">가입</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
   
</body>

</html>