<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>

<title>회원가입 완료</title>


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link href="https://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet">
<link rel="icon" type="image/png" href="./resources/img/logo3.png">
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
                       <a class="nav-link font" href="#fly">이벤트<span class="sr-only">(current)</span></a>
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
               
                  <div class="btn-group">
                  <button type="button"
                     class="btn btn-outline-primary dropdown-toggle mr-1"
                     data-toggle="modal" aria-haspopup="true" aria-expanded="false"
                     data-target="#search">검색</button>
               </div>

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



					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> </a></li>

				</ul>

			</div>
		</nav>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<hr />
	<br />
	<br />
	<br />
	<!-- 회원가입 완료 메시지 -->
	<tr>
		<table border="1">
			<!-- <th bgcolor="white" width="200"></th> -->
			<th bgcolor="white" width="3000"><font size="10"><center>"여행가자" 회원이 되신 것을 환영합니다!</center></font></th>
		</table>
	</tr>
	<br />
	<br />
	<br />
	
	<center><img alt="" src="./resources/img/travelcute.jpg"></center>
	
	<br/>
	<br/>
	<br/>
	
	<tr>
		<table border="1">
			<th bgcolor="white" width="3000"><font size="5"><center>"여행가자"에서 패키지 여행을 하면 어떤 즐거운 경험을 가져올까요? 그 궁금증을 "여행가자"에서 풀어보세요.</center></font></th>
		</table>
	</tr>
	
	<tr>
		<table border="1">
			<th bgcolor="white" width="3000"><font size="10"><center>
						<a href="index.jsp" class="btn btn-primary btn-primary11"
							style="background-color: black; border-color: black;">메인페이지로
							돌아가기</a>
					</center></font></th>
					<br/>
		</table>
	</tr>



	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<hr />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />




	<div class="container-fluid pt-5 pb-5 backgroud">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<img src="./resources/img/gotravel_logo.jpg" width="85px"
						height="50px">
					<h4 class="text-white h4_text">&copy;Copyrights 2018. All
						rights reserved by: go travel</h4>

				</div>

			</div>

		</div>

	</div>

</body>
</html>