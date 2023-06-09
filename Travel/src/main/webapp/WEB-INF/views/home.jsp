<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
    
<!DOCTYPE html>
<html>
   <head>
      <title>여행가자</title>
         <meta charset="utf-8" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
          <link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
         <link rel="icon" type="image/png" href="./resources/img/gotravel_logo.jpg">
         <link rel="stylesheet" href="./resources/css/swiper.min.css">
      <link rel="stylesheet" href="./resources/css/view.css">
         <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
         <link rel="stylesheet" type="text/css" href="./resources/css/style.css">
         <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
      
         <script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
         <script type="text/javascript" src="./resources/js/bootstrap.bundle.min.js"></script>
         <script type="text/javascript" src="./resources/js/event.js"></script>

   </head> 
<body>
	<c:choose>
		<c:when test="${loginerror == '실패'}">
			<script type="text/javascript">
   				alert("아이디 또는 비밀번호가 잘못입력되었습니다");
   			</script>
		</c:when>
	</c:choose>


	<!--navbar-->
   <div id="navbar">
      <nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
                 <a class="navbar-brand" href="#" target="blank"><img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px"><span class="logoo"></span></a>
                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
                 </button>

                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav ml-auto id="float">
                    
                   
                     <li class="nav-item active">
                             <a class="nav-link font" id="home" href="#">Home<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#top">패키지<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#chose">관광지 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#work">숙소<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="#gallery">할인<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="#blog">리뷰<span class="sr-only">(current)</span></a>
                  </li>

                <c:choose>
               <c:when test="${sessionScope.id != null and sessionScope.id != 'admin'}">
               <li class="nav-item active"><a class="nav-link font"
                  href="mypage.do">마이페이지<span class="sr-only">(current)</span></a></li>
                </c:when>
                <c:when test="${ sessionScope.id != null and sessionScope.id == 'admin'}">
               <li class="nav-item active"><a class="nav-link font" id="home"
                  href="manager.do">관리자페이지<span class="sr-only">(current)</span></a>
               </li> 
               </c:when>
              
               </c:choose>   
                <c:if test="${ sessionScope.id != null and sessionScope.id != 'admin'}">
               <li class="nav-item active"><a class="nav-link font" id="review"
                  href="reviewPage.do">리뷰쓰기<span class="sr-only">(current)</span></a>
               </li>
               </c:if> 
               <div class="modal fade" id="search" tabindex="-1" role="dialog"
                  aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">

                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div> 
                     </div>
                  </div>
               </div>


					<c:choose>
						<c:when test="${sessionScope.id == null}">
							<div class="btn-group">
								<button type="button"
									class="btn btn-outline-primary dropdown-toggle"
									data-toggle="modal" aria-haspopup="true" aria-expanded="false"
									data-target="#login">로그인</button>
							</div>
						</c:when>
						<c:when test="${sessionScope.id != null}">
							<div class="btn-group">
								<button type="button"
									class="btn btn-outline-primary dropdown-toggle" id="logout">로그아웃</button>
							</div>
						</c:when>
					</c:choose>

					<div class="modal fade" id="login" tabindex="-1" role="dialog"
                  aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title text-dark" id="exampleModalLabel">로그인</h5>
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                           <form action="login.do">
                              <div class="form-group">
                                 <label for="exampleInputEmail1" class="text-dark">ID</label>
                                 <input type="text" class="form-control" name="member_Id"
                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                    placeholder="아이디 입력">

                              </div>

                              <div class="form-group">
                                 <label for="exampleInputPassword1" class="text-dark">PASSWORD</label>
                                 <input type="password" class="form-control" name="member_Password"
                                    id="exampleInputPassword1" placeholder="비밀번호 입력">
                              </div>
                              <a href="findId.do" class="href-find">아이디/비밀번호 찾기</a> 
                              <button type="submit" class="btn btn-primary">로그인</button>
                              <a
                                 href="javascript:kakaoLogin();"><img
                                 src="./resources/img/KakaoTalk_login.png" class="kakao_login_jpg"
                                 alt="카카오계정 로그인" style= "margin: 0px auto; display:inline;"/></a>

                              <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
                              <script>
                                   window.Kakao.init('fc3c5b38f841f6d55bdfb9248b3b7c9f');

                                      function kakaoLogin() {
                                       window.Kakao.Auth.login({
                                              scope: 'profile, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                                                 success: function(response) {
                                                  console.log(response) // 로그인 성공하면 받아오는 데이터
                                                  window.Kakao.API.request({ // 사용자 정보 가져오기 
                                                      url: '/v2/user/me',
                                                      success: (res) => {
                                                       const kakao_account = res.kakao_account;
                                                       console.log(kakao_account)
                                                            }
                                                           });
                                                     window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                                                          },
                                                          fail: function(error) {
                                                                 console.log(error);
                                                 }
                                                });
                                               }
                                  </script>
                               <a href="signUp.do">   
                              <button type="button" class="btn btn-regist">회원가입</button></a>
                           </form>

                        </div>

                     </div>
                  </div>
               </div>
                      
                 
                  <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                    </a> 
                  </li> 
             </ul> 
         </div>
      </nav>
   </div>

            <!--section bar-->

   <div class="section">

        <h1>"여행가자"에서        여행가자!</h1>

        <div class="video-container">
            <div class="color-overlay"></div>
            <video autoplay loop muted>
                <source src="./resources/video/main1_.mp4" type="video/mp4">
            </video>
        </div>

    </div>


   <!-- body-->
  
               <!--img cover-->

      <div class="container-fluid full">
         <div class="cover-img">
            <div class="container">

               <div class="row" id="top">
                  <div class="col-md-12 col-sm-12 headi font1">
                     <p>어떤 나라로 떠나고 싶으신가요?</p>
                     <p>이곳에서 패키지 상품을 보시고 예약하세요</p>
                     
                  </div>
                  

               </div>
               
            </div>
         </div>
         
      </div>

               <!--destination-->
      <div class="container mt-5 mb-5">
                                 
                     <div class="container bac">
                                        <div class="card-deck">
                                               <div class="card cardstyle">
                                                 <c:set var="i" value="0" />
                                              <c:set var="j" value="3" />
                                               
                                                 <table border="1">
                                                     <c:forEach items="${productMainList}" var="productMain">
                                                     <c:if test="{i%j == 0}">
                                                     <tr>
                                                     </c:if>
                                                     <td> 
                                                     <img class="card-img-top" id="style" style="width:300px; height:200px" src="./resources/upload/${productMain.image_New_Name}" alt="Project 1">
                                                  
                                                 
                                                 <div class="card-body">
                                                       <h5 class="card-title"><span class="float-left" >${productMain.product_Place} </span><span class="float-right" style="font-size:14px;">가격: ${productMain.product_Price}</span></h5>

                                                </div>

                                                <div class="card-footer text-muted">
                                                       <a href="ProductViewDetails.do?product_Id=${productMain.product_Id}" target="blank" class="btn btn-primary">패키지 상세정보</a>
                                                  </div>
                                               
                                              </td>
                                                       <c:if test="${i%j == j-1}"> 
                                                       </tr>
                                                       </c:if> 
                                                       <c:set var="i" value="${i+1}" /> 
                                       </c:forEach>
                                       </table>
                                                    <a href="packageAll.do" class=" btn btn-primary1">패키지 전체보기</a> 
                                                    

                                          </div>
                                          </div>
                     </div>
                                 
               </div>

                                          <!--3d-->


   <div class="container-fluid bac3 photo pb-5">
         


         <dir class="container-fluid">
               <div class="row p-5">
                  <div class="col-sm-12">
                     <h5 class="text-center hfont">수많은 고객들이 선택한 사이트</h5>
                     <h2 class="text-center hfont">왜 "여행가자"인가?</h2>
                  </div>
                                                         
               </div>
                                                      
         </dir>
                                                   



   <div class="swiper-container pb-5">
    <div class="swiper-wrapper">


                              <div class="swiper-slide">
                                  <div class="imgbox">
                                      <img src="./resources/img/book.jpg" class="img-fluid">
                                  </div>
                                  <div class="bg-dark">
                                      <h3 class="p-1 text-white">1. 간단한 카테고리</h3>
                                      <p class="p-2 text-white">한눈에 들어오는 여행 카테고리 
                                      </p>

                                  </div>
                              </div>


                              <div class="swiper-slide">
                                  <div class="imgbox">
                                      <img src="./resources/img/main.jpg" class="img-fluid">
                                  </div>
                                  <div class="bg-dark">
                                      <h3 class="p-1 text-white">2. 다양한 패키지 상품</h3>
                                      <p class="p-2 text-white">동남아부터 유럽, 미주 등 다양한 나라들을 모아둔 상품들
 
                                      </p>

                                  </div>
                              </div>


                              <div class="swiper-slide">
                                  <div class="imgbox">
                                      <img src="./resources/img/order.jpg" class="img-fluid">
                                  </div>
                                  <div class="bg-dark">
                                      <h3 class="p-1 text-white">3. 몸만 가면 되는 여행</h3>
                                      <p class="p-2 text-white">항공권부터 숙박까지 제공해 주는 패키지여행
                                      </p>

                                  </div>
                              </div>


                              <div class="swiper-slide">
                                  <div class="imgbox">
                                      <img src="./resources/img/dance.jpg" class="img-fluid">
                                  </div>
                                  <div class="bg-dark">
                                      <h3 class="p-1 text-white">4. 실제 리뷰로 신뢰도 상승</h3>
                                      <p class="p-2 text-white">리뷰 게시판을 통해 볼 수 있는 실제 여행객들의 생생한 후기
                                      </p>

                                  </div>
                              </div>
 
                            </div>


    

                            <div class="swiper-pagination"></div>
                      </div>


            </div>




                                          <!--travel chose -->

                                    <div class="container-fluid bac8 pb-5 pt-5" id="chose">
                                       <div class="container pt-5 pb-3">
                                          <div class="row">
                                             <div class="col-sm-12">
                                                <h3 class="color">수많은 여행자들의 선택, 최고의 여행지로 선택된 곳을 확인해 보세요!</h3>
                                                <h2 class="color">
                                                여행자들이 선택한 최고의 장소
                                                </h2>
                                             </div>
                                          </div>
                                          
                                       </div>

                                       <div class="container">
                                          
                                          <div class="row">
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                 <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/ha1.jpg" alt="" >
                                                            <div class="overlay">
                                                              <h2>하와이(하나우마베이)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/Attraction_Review-g60982-d261241-Reviews-Hanauma_Bay_Nature_Preserve-Honolulu_Oahu_Hawaii.html">관광지 보기</a>
                                                           </div>
                                                    </div>
                                             </div>
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/bang1.jpg" alt="" >
                                                            <div class="overlay">
                                                              <h2>방콕(새벽사원)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/Attraction_Review-g293916-d317504-Reviews-Temple_Of_Dawn_Wat_Arun-Bangkok.html">관광지 보기</a>
                                                           </div>
                                                    </div>
                                             </div>
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/hong1.jpg" alt="" >
                                                            <div class="overlay">
                                                              <h2>홍콩(난리안가든)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/ShowUserReviews-g294217-d1645928-r417302638-Nan_Lian_Garden-Hong_Kong.html">관광지 보기</a>
                                                           </div>
                                                    </div>
                                             </div>
                                             
                                          </div>


                                          <div class="row">
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                 <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/sw1.jpg" alt="">
                                                            <div class="overlay">
                                                              <h2>스위스(노트르담)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/Attraction_Review-g187147-d188679-Reviews-Cathedrale_Notre_Dame_de_Paris-Paris_Ile_de_France.html">관광지 보기</a>
                                                           </div>
                                                   </div>
                                             </div>
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/gold1.jpg" alt="">
                                                            <div class="overlay">
                                                              <h2>골드코스트(바이런베이)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/Tourism-g528934-Byron_Bay_Byron_Shire_New_South_Wales-Vacations.html">관광지 보기</a>
                                                           </div>
                                                    </div>
                                             </div>
                                             <div class="col-md-4 col-sm-12 mt-2">
                                                <div class="hovereffect">
                                                        <img class="img-fluid" src="./resources/img/cal1.jpg" alt="">
                                                            <div class="overlay">
                                                              <h2>캘리포니아(빅스비다리)</h2>
                                                              <a class="info" href="https://www.tripadvisor.co.kr/Attraction_Review-g240329-d116836-Reviews-Bixby_Bridge-Big_Sur_California.html">관광지 보기</a>
                                                           </div>
                                                    </div>
                                             </div>
                                             
                                          </div>




                                       </div>
                                       
                                    </div>







                                    
                                 <!--how it works-->


                           <div class="container mt-5 mb-5" id="work">


                              <div class="container mt-3 mb-3">
                                          <div class="row">
                                             <div class="col-sm-12">
                                                <h4 class="color">잠자리 걱정없는 여행!</h4>
                                                <h2 class="color">
                                                당신이 원하는 분위기는?
                                                </h2>
                                                <a href="hotellist.do" class="btn btn-primary1">호텔 전체보기</a>
                                             </div>
                                          </div>
                                          
                                       </div>
                                    <div class="container bac">
                                         <div class="card-deck">
                                               <div class="card cardstyle">
                                                 
                                                 <c:set var="i" value="0" />
												 <c:set var="j" value="2" />
												 	<table border = "1">
                                                  <c:forEach items="${hotelMainList}" var ="hotelMain"> 
                                                  		<c:if test="{i%j == 0}">
                                                  			<tr>
                                                  		</c:if>
                                                  		<td>
                                                     <img class="rounded-circle ddd m-auto" src="./resources/upload/${hotelMain.image_New_Name }" alt="photo" width="140px" height="140px">
                                                  	
                                                 
                                                 <div class="card-body">
                                                       <h5 class="card-title">${hotelMain.hotel_Name}</h5>
                                                       <p class="card-text size">${hotelMain.hotel_Address}</p>
                                                     </div>
                                                      <div class="card-footer text-muted">
                                                       <a href="getHotel.do?hotel_Name=${hotelMain.hotel_Name}" class="btn btn-primary">호텔 상세보기</a>
                                                       
                                                        </div>
                                                        </td>
                                                       <c:if test="${i%j == j-1}"> 
                                                       </tr>
                                                       </c:if> 
                                                       <c:set var="i" value="${i+1}" /> 
                                                   </c:forEach> 
                                             </table>
                                               </div> 
                                             </div>  
                                    </div>
                                 
                              </div>


                           <div class="container-fluid bac7 photo2 mb-5">
                              <div class="container con">
                                 <div class="row pt-5">
                                    <div class="col-sm-12">
                                       <h5 class="text-center color2">내가 만드는 자유로운 여행일정</h5>
                                       <h2 class="text-center color2">당신의 여행 계획을 채워보세요!</h2>

                                          <h5 class="text-center color2">싱가포르 여행: 1일차 오전 비행 후 오후에 오차르 로드에서 쇼핑. 라우파삿 사태거리에서 야식. 2일차 오전 보타닉 가든 관광 후 오후에 차이나타운 불아사 방문.마리나베이 쇼핑 후 스펙트라 쇼 관람. 3일차 오전 센토사 섬에서 피크닉 후 오후에 디즈니랜드 관광. 4일차 아랍스트리트 하지레인에서 식사 후 가든스바이더베이 관광. 슈퍼트리 쇼 관람 후 창이공항에서 쥬얼창이폭포 관람 후 밤 비행 </h5>
                                       
                                    </div>
                                    <div class="row mt-3 m-auto">
                                    <div class="col-sm-12">
                                       
                                                       <a href="https://www.myro.co.kr/" class="btn btn-success">여행플래너 사이트 마이로</a>
                                                        

            
                                       </div>

                                    </div>
                                    
                                 </div>

                              </div>

                        </div>


                                    <!--photo gallery-->

   <div class="container" id="gallery">
      <div class="row">
         <div class="col-sm-12 m-auto">
            <h4 class="m-auto">이번달 카드사별 할인</h4>
            <h2 class="m-auto">카드사 할인 이벤트</h2>

         </div>
         
         
      </div>

      <div class="row">
         <div id="cardhyun2" class="col-md-3 col-sm-12 p-2">
            <img id="cardhyun1" class="img-fluid grayscale abc" src="./resources/img/hyun1.jpg">
            <textarea class='cardhyun' rows="5" cols="35">해외패키지상품 구매 시 12개월 무이자할부( 6개월 : 200만원 이상 결제 시, 12개월 : 500만원 이상 결제 시 )</textarea>
         </div>

         <div id="cardlot2" class="col-md-3 col-sm-12 p-2">
            <img id="cardlot1" class="img-fluid grayscale abc" src="./resources/img/lot1.jpg">
            <textarea class='cardlot' rows="5" cols="35">해외여행, 해외호텔, 국내여행상품 구매 시 6/12개월 무이자할부( 6개월 : 10만원 이상 결제 시, 12개월 : 30만원 이상 결제 시 )</textarea>
         </div>

         <div id="cardkuk2" class="col-md-3 col-sm-12 p-2">
            <img id="cardkuk1" class="img-fluid grayscale abc" src="./resources/img/kuk1.jpg">
            <textarea class='cardkuk' rows="5" cols="35">2~3개월 무이자 할부
( 6개월 부분 무이자(1~3회차 고객부담), 10개월 부분무이자(1~4회차 고객부담), 12개월 부분무이자(1~5회차 고객부담) )</textarea>
         </div>

         <div id="cardsin2" class="col-md-3 col-sm-12 p-2">
            <img id="cardsin1" class="img-fluid grayscale abc" src="./resources/img/sin1.jpg">
            <textarea class='cardsin' rows="5" cols="35">2~3개월 무이자 할부
( 10개월 부분무이자(1~4회차 고객부담) 12개월 부분무이자(1~5회차 고객부담) )</textarea>
         </div>
         

      </div>
      
   </div>


                  <!--blog-->


               <div class="container mt-5" id="blog">
                  <div class="col-sm-12">
                     <h4 class="m-auto">실제 고객들의 생생한 후기</h4>
                     <h2 class="m-auto">솔직한 리뷰</h2>
                  </div>


				
                  <div class="card-deck mt-3">
                  <c:forEach items="${reviewMainList}" var="review">
                                               <div class="card cardstyle">
                                                 
                                                        <div class="card-header">
                                                             ${review.review_Title}
                                                        </div>
                                                     <img class="card-img-top" id="style" src="./resources/upload/${review.image_New_Name}" alt="Project 1">
                                                  
                                                 
                                                 <div class="card-body">
                                                 		 <h5 class="card-title"><span class="float-left"></span>작성자: &nbsp;${review.review_Writer}</span></h5>
                                                       <h5 class="card-title"><span class="float-left"></span><a href="reviewGetPage.do?review_Num=${review.review_Num}"><span class="float-right">조회수: ${review.review_Count}</span></a></h5>
                                                     </div>
                                                     <h5 class="card-text">${review.review_Content}</h5>

                                                                                                   
                                                      <div class="card-footer text-muted">
                                                       <a href="reviewPage.do" class="btn btn-primary">리뷰 상세보기</a>
                                                        </div>
                                               </div>
                                                </c:forEach>  
                                               
                                             </div>
                                          
                  
               </div>


               <!--footer-->

               <div class="container-fluid backgroud3">
                  <div class="container">
                     <div class="row">
				<div class="col-md-4 col-sm-12">
					<h2 class="text-left text-white pt-3">INFORMATION</h2>


					<textarea class="form-control bac mt-22" placeholder="회사 정보"
						readonly>회사 운영시간 : 09:00 ~ 18:00
회사 전화번호 : 02-1234-1234
E-Mail: gotavel@gmail.com
SNS</textarea>

					<menu class="text-left">
						<ul id="social">
							<li><a href="#"><img src="./resources/img/facebook.png"
									alt="facebook share"></a></li>
							<li><a href="#"><img src="./resources/img/gplus.png"
									alt="facebook share"></a></li>
							<li><a href="#"><img src="./resources/img/linkedin.png"
									alt="facebook share"></a></li>
							<li><a href="#"><img src="./resources/img/twitter.png"
									alt="facebook share"></a></li>
							<li><a href="#"><img src="./resources/img/youtube.png"
									alt="facebook share"></a></li>

						</ul>
					</menu>
				</div>
				<div class="col-md-4 col-sm-12">
					<h2 class="text-left text-white pt-3">OUR SERVICE</h2>
					<ul class="list-group list-group-flush mb-5">
						<textarea class="form-control bac mt-22" placeholder="회사 정보"
							readonly>패키지 상품 구매 시 포함사항 :
전일정 식사
항공권
유류할증료
여행자보험
숙소</textarea>


					</ul>
				</div>
				<div class="col-md-4 col-sm-12">
                           <div>
                              
                              <h2 class="text-left text-white pt-3">KEEP IN TOUCH</h2>
                           </div>
                           <form>
                                    <input type="email" class="form-control bac" name="" placeholder="여행가자" readonly>
                                    <textarea class="form-control bac mt-22" placeholder="회사 소개" readonly>여행가자는 2023년 창업한 신생회사입니다. 고객들에게 다양한 여행상품을 제공합니다. 솔직한 리뷰를 통해 여행의 생생한 후기를 전합니다. 교통이 편리하고 깨끗한 숙소를 제공합니다. </textarea>
                               </form>
                        </div>
                        
                     </div>
                     
                  </div>
                  
               </div>

               <div class="container-fluid pt-5 pb-5 backgroud">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-12 col-sm-12">
                           <img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px">
                         <h4 class="text-white h4_text">&copy;Copyrights 2023. All rights reserved by: go travel</h4>
                           
                        </div>                        
                        
                     </div>
                     
                  </div>
                  
               </div>
  
               
            <!--  javascript   -->


   


      <script src="jquery.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>

<script>
         $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})

      </script>


      <script type="text/javascript">
  

  var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
}

</script>

 <script src="./resources/js/swiper.min.js"></script>

  <script>
    var swiper = new Swiper('.swiper-container', {
      effect: 'coverflow',
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 'auto',
      autoplay:{
         delay : 2500,
         disableOnInteraction:false,
      },
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows : true,
      },
      pagination: {
        el: '.swiper-pagination',
      },
    });
  </script>
              
   <script src="./resources/js/smoothscroll.js" type="text/javascript"></script>
   <script>$('a').smoothScroll({speed: 1500});</script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <script src="./resources/js/parallax.min.js"></script>

   <script>$('.parallax-window').parallax();</script>
</body>
</html>