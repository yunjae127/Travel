<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content />
<meta name="author" content />
<title>Modern Business - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/css/styles.css" rel="stylesheet" />
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
</head>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">


		<div id="navbar">
			<nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
				<a class="navbar-brand" href="#" target="blank"><img
					src="./resources/img/gotravel_logo.jpg" width="85px" height="50px"><span
					class="logoo"></span></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto id="float">
						<li class="nav-item active"><a class="nav-link font"
							id="home" href="index.jsp">Home<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item active"><a class="nav-link font"
							href="#fly">소개<span class="sr-only">(current)</span></a></li>

						<li class="nav-item active"><a class="nav-link font"
							href="#top">패키지<span class="sr-only">(current)</span></a></li>
						<li class="nav-item active"><a class="nav-link font"
							href="#chose">관광지 <span class="sr-only">(current)</span></a></li>
						<li class="nav-item active"><a class="nav-link font"
							href="#work">숙소<span class="sr-only">(current)</span></a></li>

						<li class="nav-item active"><a class="nav-link font"
							href="#gallery">할인<span class="sr-only">(current)</span></a></li>

						<li class="nav-item active"><a class="nav-link font"
							href="#blog">리뷰<span class="sr-only">(current)</span></a></li>

						<li class="nav-item active"><a class="nav-link font"
							href="test1.jsp">QnA<span class="sr-only">(current)</span></a></li>
						<li class="nav-item active"><a class="nav-link font"
							href="mypage.jsp">마이페이지<span class="sr-only">(current)</span></a>
						</li>
						<div class="btn-group">
							<button type="button"
								class="btn btn-outline-primary dropdown-toggle mr-1"
								data-toggle="modal" aria-haspopup="true" aria-expanded="false"
								data-target="#search">Search</button>
						</div>


						<!-- search -->
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
											<input type="Search" name="" class="form-control"
												placeholder="Search">
											<button type="submit" data-dismiss="modal"
												class="btn btn-outline-primary mt-2 mb-2">Search</button>
										</form>
									</div>

								</div>
							</div>
						</div>




						<!-- 로그인 버튼 부분 -->
						<div class="btn-group">
							<button type="button"
								class="btn btn-outline-primary dropdown-toggle"
								data-toggle="modal" aria-haspopup="true" aria-expanded="false"
								data-target="#login">login</button>

						</div>

						<div class="modal fade" id="login" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title text-dark" id="exampleModalLabel">login</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<label for="exampleInputEmail1" class="text-dark">Email
													address</label> <input type="email" class="form-control"
													id="exampleInputEmail1" aria-describedby="emailHelp"
													placeholder="Enter email"> <small id="emailHelp"
													class="form-text text-muted">We'll never share your
													email wif anyone else.</small>
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1" class="text-dark">Password</label>
												<input type="password" class="form-control"
													id="exampleInputPassword1" placeholder="Password">
											</div>
											<div class="form-group form-check">
												<input type="checkbox" class="form-check-input"
													id="exampleCheck1"> <label class="form-check-label"
													for="exampleCheck1">Check me out</label>
											</div>
											<button type="submit" class="btn btn-primary">Submit</button>
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

		<!-- Page content-->
		<section class="py-5">
			<div class="container px-5">
				<!-- Contact form-->
				<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
					<div class="text-center mb-5">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-envelope"></i>
						</div>
						<h1 class="fw-bolder">고객문의</h1>
						<p class="lead fw-normal text-muted mb-0">문의사항을 입력하세요</p>
					</div>
					<div class="row gx-5 justify-content-center">
						<div class="col-lg-8 col-xl-6">
							<!-- * * * * * * * * * * * * * * *-->
							<!-- * * SB Forms Contact Form * *-->
							<!-- * * * * * * * * * * * * * * *-->
							<!-- This form is pre-integrated with SB Forms.-->
							<!-- To make this form functional, sign up at-->
							<!-- https://startbootstrap.com/solution/contact-forms-->
							<!-- to get an API token!-->
							<form id="contactForm" data-sb-form-api-token="API_TOKEN">





								<div class="form-group">
									<div class="form-floating">
										<select class="form-input" id="title">
											<!-- <option value="">제목 유형</option> -->
											<option value="package">패키지</option>
											<option value="flight">항공권</option>
											<option value="accommodation">숙소</option>
											<option value="refund">환불</option>
											<option value="other">기타문의</option>
										</select>
										<!-- <label for="title">문의 유형</label> -->
									</div>
								</div>




								<div class="form-group">
									<div class="form-floating">
										<input class="form-control form-input" id="name" type="text"
											placeholder="Enter your name..."> <label for="name">작성자는
											이름 자동으로 뜸</label>
									</div>
								</div>







								<div class="form-group">
									<div class="form-floating">
										<textarea class="form-control form-input" id="message"
											placeholder="Enter your message here..."
											style="height: 10rem"></textarea>
										<label for="message">내용은 필수입력 사항입니다.</label>
									</div>
								</div>







								<!--  <div class="form-floating mb-3">
									<input class="form-control" id="name" type="text"
										placeholder="Enter your name..." /> <label for="name">작성자는
										이름 자동으로 뜸</label>
								</div>
								
								<div class="form-floating mb-3">
									<input class="form-control" id="title" 
										placeholder="Enter your title" data-sb-validations="required,title" /> 
										<label for="title">
										
										<div class="formfloating33">
										<select>
										  <option value="">제목 유형</option> 
 										  <option value="apple">패키지</option> 
 										  <option value="banana">항공권</option> 
 										  <option value="orange">숙소</option> 
 										   <option value="banana">환불</option> 
 										  <option value="orange">기타상담</option> 
										</select>
										</div>
										
										</label>
									<div class="invalid-feedback" data-sb-feedback="title:required">제목은
										필수입력 사항입니다.</div>
										
								</div>
								
								
								
								

								<div class="form-floating mb-3" id="menu">
									<input class="form-control" id="phone" type="tel"
										placeholder="(123) 456-7890" data-sb-validations="required" />
										<ul>
										<li><a href="#">문의유형</a>
											<ul>
												<li><a href="#">패키지</a></li>
												<li><a href="#">항공권</a></li>
												<li><a href="#">숙소</a></li>
												<li><a href="#">환불</a></li>
												<li><a href="#">기타상담</a></li>
											</ul></li>
									</ul>
									
									
									

								 </div>
								Message input
								<div class="form-floating mb-3">
									<textarea class="form-control" id="message" type="text"
										placeholder="Enter your message here..." style="height: 10rem"
										data-sb-validations="required"></textarea>
									<label for="message">내용</label>
									<div class="invalid-feedback"
										data-sb-feedback="message:required">내용은 필수입력 사항입니다.</div>
								</div> -->



								<!-- Submit success message-->
								<!---->
								<!-- This is what your users will see when the form-->
								<!-- has successfully submitted-->
								<div class="d-none" id="submitSuccessMessage">
									<div class="text-center mb-3">
										<div class="fw-bolder">Form submission successful!</div>
										To activate this form, sign up at <br /> <a
											href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
									</div>
								</div>
								<!-- Submit error message-->
								<!---->
								<!-- This is what your users will see when there is-->
								<!-- an error submitting the form-->
								<div class="d-none" id="submitErrorMessage">
									<div class="text-center text-danger mb-3">Error sending
										message!</div>
								</div>
								<!-- Submit Button-->
								<div class="d-grid">
									<button class="btn btn-primary btn-lg disabled"
										id="submitButton" type="submit">저장</button>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</section>
	</main>
	<!-- Footer-->
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
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
