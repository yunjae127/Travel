<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html>
<head>

<title>마이페이지</title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link href="https://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet">
<link rel="icon" type="image/png" href="./resources/img/gotravel_logo.jpg">
<link rel="stylesheet" href="./resources/css/swiper.min.css">

<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" type="text/css" href="./resources/css/mypage.css"> -->

<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="./resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./resources/js/slider.js"></script>
<script type="text/javascript" src="./resources/js/event.js"></script>



</head>
<body>

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
                             <a class="nav-link font" id="home" href="home.do">Home<span class="sr-only">(current)</span></a>
                  </li>
 
                  <li class="nav-item active">
                       <a class="nav-link font" href="packageAll.do">패키지<span class="sr-only">(current)</span></a>
                  </li> 
                  <li class="nav-item active">
                       <a class="nav-link font" href="hotellist.do">숙소<span class="sr-only">(current)</span></a>
                  </li> 
                  <li class="nav-item active">
                       <a class="nav-link font" href="reviewPage.do">리뷰<span class="sr-only">(current)</span></a>
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
                        <div class="modal-body">
                           <form>
                              <input type="Search" name="main=search" class="form-control"
                                 placeholder="검색어를 입력해주세요">
                              <button type="submit" data-dismiss="modal"
                                 class="btn btn-outline-primary mt-2 mb-2">검색</button>

                           </form>
                           <ul name="search_list" class="search_list" hidden="hidden">
                              <li><a href=''>국내</a></li>
                              <li><a href=''>일본</a></li>
                              <li><a href=''>중국</a></li>
                              <li><a href=''>호주</a></li>
                              <li><a href=''>미국</a></li>
                              <li><a href=''>유럽</a></li>
                           </ul>

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
                     




					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> </a></li>

				</ul>

			</div>
		</nav>
	</div>


	<br />
	<!-- <tr>
		<table border="10">
			<th bgcolor="white" width="1000"><img
				src="./resources/img/le_bro.jpg"> 회원등급은 입니다 <br /> 이용금액</th>
		</table>
	</tr> -->

	<br />
	<br />
	<br />



	<!-- <div class="container">
		<div id="aaa" class="bbb">
			<img id="aaa1" class="bbb1" src="./resources/img/le_bro.jpg">
			<textarea class='aa' rows="10" cols="200">회원등급/이용금액</textarea>
		</div>
	</div> -->

<div class="mypageAll" style="position: relative; top:90px; right:-100px;">
	<table border="1">
		<tr>
			<th bgcolor="white" width="200"></th>
			
			<td style="text-align:center; border: 5px solid gray;" bgcolor="white" width="290"
				height="50"><b><center>회원등급</center></b></td>
				
				
			<td style="text-align:center; border: 5px solid gray;" bgcolor="white" width="290"
				height="50"><b><center><c:choose>
				<c:when test="${sessionScope.price le '1000000'}"><img
				src="./resources/img/le_bro.jpg">${sessionScope.id}</c:when>
				<c:when test="${sessionScope.price le '2000000'}"> <img
				src="./resources/img/le_sil.jpg">${sessionScope.id}</c:when>
				<c:when test="${sessionScope.price le '3000000'}"><img
				src="./resources/img/le_gold.jpg">${sessionScope.id} </c:when>
				<c:otherwise> <img
				src="./resources/img/le_vip.jpg">${sessionScope.id}</td></c:otherwise>
			</c:choose>	</center></b></td>
				
				
			<td style="text-align:center; border: 5px solid gray;" bgcolor="white" width="290"
				height="50"><b><center>이용금액</center></b></td>
			<td style="border: 5px solid gray;" bgcolor="white" width="290"
				height="50"><b><center>${sessionScope.price}</center></b></td>


			<!-- <table style="border: 5px solid gray;" bgcolor="white" width="200">
<tr>
<td><center><b>회원등급</b></center></td>
</tr>
<tr>
<td><center>내용1</center></td>
</tr>
<tr>
<td><center>내용2</center></td>
</tr>
<td><img id="aaa1" class="bbb1" src="./resources/img/le_bro.jpg"></td>
</table> -->

		</tr>
	</table>


	<!-- if (money >= 100 && money < 400) {
  document.getElementById("image").setAttribute("src", "./resources/img/le_bro.jpg");
} else if (money >= 400 && money < 700) {
  document.getElementById("image").setAttribute("src", "./resources/img/le_gol.jpg");
} else if (money >= 700 && money < 1000) {
  document.getElementById("image").setAttribute("src", "./resources/img/le_sil.jpg");
} else if (money >= 1000) {
  document.getElementById("image").setAttribute("src", "./resources/img/le_vip.jpg");
} -->
	<br />
	<br />


	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="white" width="500"><font size="5">최근 예약 내역</font></th>
		</table>
	</tr>
	<hr />

	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="#bbdefb" width="350" style="border: 1px solid gray;"><center> 예약번호</center></th>
			<th bgcolor="#bbdefb" width="600" style="border: 1px solid gray;"><center> 예약일</center></th>
			<th bgcolor="#bbdefb" width="350" style="border: 1px solid gray;"><center> 가격</center></th>
		</table>
		
	<c:forEach items="${selectBook}" var="Book">
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th width="350" style="border: 1px solid gray;"><center>${Book.booking_Id}</center></th>
			<th width="600" style="border: 1px solid gray;"><center>${Book.booking_Date}</center></th>
			<th width="350" style="border: 1px solid gray;"><center>${Book.booking_Price}</center></th>
			</table>
			</c:forEach>
	
	
	</tr>

	<br />
	<br />



		<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<hr />
	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="white" width="500"><font size="5">리뷰 내역</font></th>
		</table>
	</tr>
	
	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="#bbdefb"  width="350" style="border: 1px solid gray;"><center>작성자</center></th>
			<th bgcolor="#bbdefb" width="600" style="border: 1px solid gray;"><center>리뷰제목</center></th>
			<th bgcolor="#bbdefb" width="350" style="border: 1px solid gray;"><center>등록일</center></th>
			<br/> 
		</table>
		
		<c:forEach items="${selectReview}" var="review">
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th width="350" style="border: 1px solid gray;"><a href="reviewGetPage.do?review_Num=${review.review_Num}"><center>${review.review_Title}</center></a></th>
			<th width="600" style="border: 1px solid gray;"><center>${review.review_Title}</center></th>
			<th width="350" style="border: 1px solid gray;"><center>${review.review_Date}</center></th>
			</table>
			</c:forEach>
		
	</tr>
</div>

	<br />
	<br />
  


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<hr />
<div class="container-fluid pt-5 pb-5 backgroud">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-12 col-sm-12">
                           <img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px">
                			<h4 class="text-white h4_text">&copy;Copyrights 2018. All rights reserved by: go travel</h4>
                           
                        </div>                        
                        
                     </div>
                     
                  </div>
                  
               </div>
</body>
</html>