<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>호텔 상세 설명</title>
        <!-- Favicon-->
        <link rel="icon" type="./resources/img/kakao_login.png" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/viewdetail.css" rel="stylesheet" />
        <link href="./resources/css/bootstrap.min2.css" rel="stylesheet">
        <script type="text/javascript" src="./resources/js/event.js"></script>
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
                    </ul>
                    <form class="d-flex"> 
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
           
                  <div>
                   <img src="./resources/upload/${hotel.image_New_Name}" alt="First slide">
                </div>      
                       
                    <div class="explain">
                        <h3>$호텔 상세 설명$</h3>
                        <form action="home.do" method="get">
                        <input name="image_Name" type="hidden" value="${hotel.hotel_Name}"/>
                        <h2 class="display-5 fw-bolder">${hotel.hotel_Name}</h2><br/>
                        <p class="lead">  
						<p class="HotelFont">${hotel.hotel_Content}</p> 			
						<p class="HotelFont">${hotel.hotel_Address}</p> 
						  
					</p> 
					</form>
                    </div>
                    
                </div>
            </div>
        </section>
        <form action="home.do" method="get">
        <div class="information">
       <input name="image_Name" type="hidden" id="Lat" value="${hotel.hotel_Lat}"/>
       <input name="image_Name" type="hidden" id="Lng" value="${hotel.hotel_Lng}"/> 
       	<h3 class = 'hotellocation'>호텔 위치 정보</h3>
       	<div id="map" style="height: 400px;"></div>
       	 
       	<h3 class = 'hotelreview'>호텔 리뷰</h3>
       	
       	<c:choose>
				<c:when test="${hotel.hotel_Name eq '팔라초 베르사체'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g658994-d256324-Reviews-or460-Palazzo_Versace-Main_Beach_Gold_Coast_Queensland.html"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '파크하얏트 뉴욕'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g60763-d93450-Reviews-Hyatt_Grand_Central_New_York-New_York_City_New_York.html"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '노보텔 다낭 프리미어 한 리버'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g298085-d3511123-Reviews-Novotel_Danang_Premier_Han_River-Da_Nang.html"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '소네바 자니'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g12219089-d10517660-Reviews-Soneva_Jani-Medhufaru.html"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '만다린 오리엔탈'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g293916-d301411-Reviews-Mandarin_Oriental_Bangkok-Bangkok.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '시드니 인터컨티넨탈 호텔'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g255060-d256570-Reviews-InterContinental_Sydney_an_IHG_Hotel-Sydney_New_South_Wales.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '더 돌더 그랜드'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g188113-d196061-Reviews-The_Dolder_Grand-Zurich.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '더 페닌슐라 베벌리힐스'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g32070-d76020-Reviews-The_Peninsula_Beverly_Hills-Beverly_Hills_California.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '르 메르디앙 타이페이'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g13808515-d1877829-Reviews-Le_Meridien_Taipei-Xinyi_District_Taipei.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '그랜드 호텔 미네르바'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g187895-d230720-Reviews-Grand_Hotel_Minerva-Florence_Tuscany.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '포시즌스 리조트 마우이 앳 와일레아'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g609129-d87397-Reviews-Four_Seasons_Resort_Maui_at_Wailea-Wailea_Maui_Hawaii.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:when test="${hotel.hotel_Name eq '카오룽 샹글릴라 홍콩'}">
					<iframe class='review'
						src="https://www.tripadvisor.co.kr/Hotel_Review-g294217-d302133-Reviews-Kowloon_Shangri_La_Hong_Kong-Hong_Kong.html#REVIEWS"
						width="300" height="200"></iframe>
				</c:when>
				<c:otherwise>
       	       	<iframe class='review' src="https://www.tripadvisor.co.kr/Hotel_Review-g658994-d256324-Reviews-or460-Palazzo_Versace-Main_Beach_Gold_Coast_Queensland.html" width="300" height="200"></iframe> 
       		</c:otherwise>
       	</c:choose>
       	</div>
       	 
       	</form>
 
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 여행가자 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/viewdetail.js"></script> 
        <script type="text/javascript" defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQZQESe8x3MHa1yjvUNqHdBqloqcWk4gc&callback=initMap"> </script>
      <div class="back">
      <a href="packageAll.do"><input class="reviewButton" type ="button"  value="패키지 정보 보러가기"/></a> 
      <a href="reviewPage.do"><input class="reviewButton" type ="button"  value="패키지 리뷰 보러가기"/></a> 
      </div>  
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 캐러셀 도전 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./resources/js/bootstrap.min.js"></script>
     
    <script type="text/javascript">
     
    	
    var map;
    function initMap() {
    	
    	var hotel_lat = document.getElementById('Lat').value;
    	var hotel_lng = document.getElementById('Lng').value; 
    	
    	//console.log(hotel_lat);
    	//console.log(hotel_lng);
    	
        var cityHall = {lat: parseFloat(hotel_lat), lng: parseFloat(hotel_lng)};
		console.log(cityHall);
		
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