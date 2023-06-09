<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>회원가입</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="./resources/css/signUp.css" rel="stylesheet" media="all">
    
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

<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
   src="./resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./resources/js/event.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
 <!-- <script src="./resource/js/jquery-2.0.1.min.js" type="text/javascript" charset="utf-8"></script> -->
  <script src="./resource/js/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
window.onload = function() {
	 
	  
	frm.postcodeSearch.onclick = function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            
	        	document.getElementById("postcode").value= data.zonecode;
	        	document.getElementById("address").value= data.address;
	        	
	        }
	    }).open();
	}
	 
	// 체크박스 전체 선택
	$(".join_box").on("click", "#chkAll", function () {
	    $(this).parents(".join_box").find('input').prop("checked", $(this).is(":checked"));
	});

	// 체크박스 개별 선택
	$(".join_box").on("click", ".checkbox", function() {
	    var is_checked = true;

	    $(".join_box .checkbox").each(function(){
	        is_checked = is_checked && $(this).is(":checked");
	    });

	    $("#chkAll").prop("checked", is_checked);
	});
	 
	frm.onsubmit = function(e) {
        e.preventDefault();
        
        var agree1 = document.querySelector('#checkbox_1');
        var agree2 = document.querySelector('#checkbox_2');
        var agree3 = document.querySelector('#checkbox_3');
        
        
           if(!agree1.checked || !agree2.checked || !agree3.checked){
              alert('동의 사항 모두 체크해 주셔야 진행 가능합니다');
              return;
           }else{
              frm.submit();
           }
	}
           
	frm.onsubmit = function(e) {
        e.preventDefault();
           
        // 비밀번호 일치 
        var password1 = document.querySelector('#password_1').value; 
        var password2 = document.querySelector('#password_2').value; 
        
        	if(password1 != password2){ 
        		alert("비밀번호가 일치하지 않습니다.");
        		return; 
        	}else{ 
        		frm.submit();
        	} 
        
     }// frm  
	
	$("#idSearch").click(function(){
        $.ajax({
           url : "idSearch.do",
           data : {"id":$(".input-group #id").val()},
           success : function(result){
              
              if(result=="yes"){
                 alert("사용가능한 아이디입니다")
              }
              else{
                 alert("중복되는 아이디입니다")
              }
           },
            error : function(result){
               alert("error");
            }
        });
     });
     
}   
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
                     

               <li class="nav-item dropdown"><a class="nav-link" href="#"
                  id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> </a></li>

            </ul>

         </div>
      </nav>
   </div>

    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">회 원 가 입</h2>
                </div> 
                    <form name="frm" method="POST" action="memberinsert.do" class="frm">
                        <div class="form-row">
                            <div class="name">이 름</div>
                            <div class="value"> 
                                        <div class="input-group">
                                            <input class="input--style-5" type="text" pattern="[ㄱ-힣]{2,5}" id="name" name="member_Name" required><br/> 
                                        	<label class="label--desc">한글 최소 2글자 이상</label>	 
                                        </div> 
                                </div>
                            </div>   
                        <div class="form-row">
                            <div class="name">아이디</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text"  pattern="[a-z0-9]{5,12}" id="id" name="member_Id" required><br/>
                                    <label class="label--desc">영문 소문자, 숫자 최소 5글자 이상</label>
                                    <span class="idcheck"><input class="idSearch" type="button" id="idSearch" name="idSearch" value="중복확인"></span><br/>
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name">주민등록번호</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text"  pattern="[0-9]{1,6}-[0-9]{1,7}" id="socialnumber_1" name="member_BirthDate" required><br/>
                                    <label class="label--desc">주민등록번호 입력예시(******-*******)</label> 
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" id="email" name="member_Email" required><br/>
                                    <label class="label--desc">이메일을 입력해주세요</label>
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name">비밀번호</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" id="password_1" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" name="member_Password"  required><br/>
                                	<label class="label--desc">'숫자', '문자', '특수문자' 1개 이상 최소 8자 이상</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">비밀번호 확인</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" id="password_2" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" name="password" required><br/>  
                               </div>
                            </div>
                        </div>
                       <div class="form-row">
                            <div class="name">전화번호</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="tel" id="tel" name="member_Tel" required>
                                	<label class="label--desc">전화번호</label>
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name">주소</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" id="postcode" name="postcode" required>
                                 		<span class="search"><input class="postcodeSearch" type="button" id="postcodeSearch" name="postcodeSearch" value="우편번호검색"></span><br/>
                                    <input class="input--style-5" type="text" id="address" name="member_Address" placeholder="검색 후 상세정보를 입력해 주세요" required>
                                </div>
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="name">힌트</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" id="hint" name="member_Hint" placeholder="다시 태어나면 되고 싶은 것은?" required>
                                </div>
                            </div>
                        </div> 
                         
                   
                   <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
                        </li>
                    </ul>
                </li>
						<li class="checkBox check02">
							<ul class="clearfix">
								<li>이용약관 동의(필수)</li>
								<li class="checkBtn"><input class="checkbox" id="checkbox_1" type="checkbox" name="chk">
								</li>
							</ul> <textarea name="" id="">여러분을 환영합니다.
여행가자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 여행가자 서비스의 이용과 관련하여 여행가자 서비스를 제공하는 여행가자 주식회사(이하 ‘여행가자’)와 이를 이용하는 여행가자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 여행가자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
						</li>
						<li class="checkBox check03">
							<ul class="clearfix">
								<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
								<li class="checkBtn"><input class="checkbox" id="checkbox_2" type="checkbox" name="chk">
								</li>
							</ul> <textarea name="" id="">여러분을 환영합니다.
여행가자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 여행가자 서비스의 이용과 관련하여 여행가자 서비스를 제공하는 여행가자 주식회사(이하 ‘여행가자’)와 이를 이용하는 여행가자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 여행가자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
						</li>
						<li class="checkBox check03">
							<ul class="clearfix">
								<li>위치정보 이용약관 동의(선택)</li>
								<li class="checkBtn"><input class="checkbox" id="checkbox_3" type="checkbox" name="chk">
								</li>
							</ul> <textarea name="" id="">여러분을 환영합니다.
여행가자 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 여행가자 서비스의 이용과 관련하여 여행가자 서비스를 제공하는 여행가자 주식회사(이하 ‘여행가자’)와 이를 이용하는 여행가자 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 여행가자 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
						</li>

					</ul>
          			   <input id="signUp" type="submit" value="회원가입">
                   
                    </form>
                 
                </div>
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


	<!-- Main JS-->
    <script src="./resources/js/signUp.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->