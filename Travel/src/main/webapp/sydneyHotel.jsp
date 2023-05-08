<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상품 상세 설명</title>
        <!-- Favicon-->
        <link rel="icon" type="./resources/img/kakao_login.png" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/viewdetail.css" rel="stylesheet" />
        <link href="./resources/css/bootstrap.min2.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand">상품 상세 설명</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">홈으로</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">상품 구입 전에</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">로그인 하기</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">장바구니</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center"> 
                    <div class="col-md-6">
                    	<!-- <img class="card-img-top mb-5 mb-md-0" src="./resources/img/NewYork_main.png" alt="미국에 있는 파크 하야트 호텔 사진" /> -->
                      <div class="card-img-top mb-5 mb-md-0"> 
                     <div class="carousel slide" id="carousel-example-generic" >
            <!-- Indicators -->
            <ol class='carousel-indicators'>
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>
             
             <!-- Carousel items -->
             <div class="carousel-inner">
                <div class="item active">
                   <img src="./resources/img/Sydney_main.png" alt="First slide">
                </div>
                <div class="item">
                   <img src="./resources/img/Sydney_serve1.png" alt="Second slide">               
                </div>
                <div class="item">
                   <img src="./resources/img/Sydney_serve2.png" alt="Third slide">                 
                </div>
                <div class="item">
                   <img src="./resources/img/Sydney_serve3.png" alt="forth slide">                 
                </div>
             </div>
             
            <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="icon-prev"></span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="icon-next"></span>
              </a>
         	 </div>	 
           </div>            
           </div>
                       
                    <div class="col-md-6">
                        <div class="small mb-1">호주로 갑시다~</div>
                        <h1 class="display-5 fw-bolder">시드니 인티컨티넨탈 호텔</h1><br/>
					<p class="lead">
					
					<ul>
						<li>1. 인기 편의 시설/서비스 주차 가능 수영장 무료 WiFi 피트니스 센터 금연 에어컨</li>
						<br />
						<li>2.식사 및 음료 풀 브렉퍼스트 아침 식사(요금 별도) - 주중 07:00 ~ 10:30, 주말
							07:00 ~ 10:30 2개의 레스토랑 2개의 바/라운지 커피숍/카페 24시간 룸서비스</li>
						<br />
						<li>3. 비즈니스 지원 비즈니스 센터 회의실 컨퍼런스 공간</li>
						<br />
						<li>4. 서비스 24시간 운영 프런트 데스크 콘시어지 서비스 투어/티켓 안내 시설 내 렌터카 서비스
							드라이클리닝/세탁 서비스 무료 신문(로비) 짐 보관 시설 다국어 구사 가능 직원 포터/벨보이 로맨스 패키지</li>
						<br />
						<li>위치 : 호주 뉴 사우스 웨일즈 The Rocks 117 Macquarie St (2000)</li>
					</ul>
					</p>
				</div>
                    
                </div>
            </div>
        </section>
       	 <h3 class = 'hotellocation'>호텔 위치 정보</h3>
       	<div id="map" style="height: 400px;"></div>
       	 
       	<h3 class = 'hotelreview'>호텔 리뷰</h3>
       	<iframe id='review' src="https://www.tripadvisor.co.kr/Hotel_Review-g255060-d256570-Reviews-InterContinental_Sydney_an_IHG_Hotel-Sydney_New_South_Wales.html" width="300" height="200"></iframe>
       	
 
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 여행가자 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/viewdetail.js"></script> 
        <script type="text/javascript" defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQZQESe8x3MHa1yjvUNqHdBqloqcWk4gc&callback=initMap"> </script>
       
        
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 캐러셀 도전 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./resources/js/bootstrap.min.js"></script>
    <script>
      $('.carousel').carousel({
    	  interval : 2500
      })
    </script>
    <script type="text/javascript">
    
    var map;
        function initMap() {
            var cityHall = {lat: -33.8626419520613, lng: 151.21052114825258};
 
            var defaultOptions = {
                zoom: 18,
                center: cityHall,
                disableDefaultUI:true,
                zoomControl: true
                };
            map = new google.maps.Map(document.getElementById('map'), defaultOptions);

            var marker = new google.maps.Marker({position: cityHall, map: map});
        
       
        }
        
window.initMap = initMap; 
    </script>
        
    </body>
</html>