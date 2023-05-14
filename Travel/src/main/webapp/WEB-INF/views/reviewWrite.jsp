<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
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
<link rel="stylesheet" type="text/css" href="./resources/css/reviewstyle.css">
<link
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
   rel="stylesheet"
   integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
   crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" /> 

<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
   src="./resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./resources/js/event.js"></script>
<script type="text/javascript">


$(function(){
const fileDOM = document.querySelector('#file');
const previews = document.querySelectorAll('.image-box');

fileDOM.addEventListener('change', () => {
  const reader = new FileReader();
  reader.onload = ({ target }) => {
    previews[0].src = target.result;
  };
  reader.readAsDataURL(fileDOM.files[0]);
});

const fileDOM2 = document.querySelector('#file2');

fileDOM2.addEventListener('change', () => {
  const imageSrc = URL.createObjectURL(fileDOM2.files[0]);
  previews[1].src = imageSrc;
});

});
</script>

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

	<div class="container mt-5" id="blog">
		<div class="card-deck mt-3">
			<div class="card cardstyle">

				<div class="card-header">리뷰를 작성해 주세요!</div>
			
			<form action="saveReview.do" method="post" enctype="multipart/form-data">
				<div class="card-body">
					<div class="flex-container">
						<div class="wrapper">
							<h2>FileReader</h2>
							<img
								src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg"
								class="image-box" /> <label for="file" class="upload-btn">
								<input id="file" name="file" type="file" /> <span>Upload
									Image</span>
							</label>
						</div>

					</div>

					<h5 class="card-title">
						<input type ="text" name="review_Writer" id="review_Writer" class="float-left" value="${sessionScope.id}" readonly> </input> 
						<span>님 즐거운 여행 되셨나요? 후기를 남겨주세요!</span>
					</h5>
				</div>
				<input type="text" name="review_Title" id="review_Title" class="reviewtitle" placeholder="  제목을 입력하여 주세요 "  /><br/> 
				<input type="text" name="review_Content" id="review_Content" class="reviewcontent" placeholder = " 내용을 작성하여 주세요"  />
				<div class="card-footer text-muted">
								<input type="submit" value="리뷰 작성"  class="btn btn-primary"> 
							</div>
							</form>
						</div>
					</div>

				</div>
			
				<div class="container-fluid pt-5 pb-5 backgroud" id='bottom3'>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h4 class="text-center text-white">&copy;Copyrights 2018. All
						rights reserved by: go travel</h4>
				</div>
			</div>
		</div>
	</div>
</body>
</html>