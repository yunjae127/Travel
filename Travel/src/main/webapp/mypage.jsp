<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>mypage</title>

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



</head>
<body>


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
					<li class="nav-item active"><a class="nav-link font" id="home"
						href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
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


	<table border="1">
		<tr>
			<th bgcolor="white" width="200"></th>
			<td style="border: 5px solid gray;" bgcolor="white" width="140"><img
				src="./resources/img/le_bro.jpg">사진바꿔라</td>
			<td style="border: 5px solid gray;" bgcolor="white" width="340"
				height="50"><b><center>회원등급</center></b></td>
			<td style="border: 5px solid gray;" bgcolor="white" width="340"
				height="50"><b><center>등급넣어라</center></b></td>
			<td style="border: 5px solid gray;" bgcolor="white" width="340"
				height="50"><b><center>이용금액</center></b></td>
			<td style="border: 5px solid gray;" bgcolor="white" width="340"
				height="50"><b><center>금액넣어라</center></b></td>


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
			<th bgcolor="#bbdefb" width="500" style="border: 1px solid gray;"><center>예약일/예약번호</center></th>
			<th bgcolor="#bbdefb" width="500" style="border: 1px solid gray;"><center>예약정보</center></th>
			<th bgcolor="#bbdefb" width="500" style="border: 1px solid gray;"><center>예약확인</center></th>
		</table>
	</tr>

	<br />
	<br />


	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="white" width="500"><font size="5">문의 내역</font></th>
		</table>
	</tr>
	<hr />
	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="#bbdefb" width="750" style="border: 1px solid gray;"><center>등록일</center></th>
			<th bgcolor="#bbdefb" width="750" style="border: 1px solid gray;"><center>문의내용</center></th>
		</table>
	</tr>

	<br />
	<br />


	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="white" width="500"><font size="5">관심상품</font></th>
		</table>
	</tr>
	<hr />

	<tr>
		<table border="1">
			<th bgcolor="white" width="200"></th>
			<th bgcolor="#bbdefb" width="300" style="border: 1px solid gray;"><center>장바구니
					아이디</center></th>
			<th bgcolor="#bbdefb" width="300" style="border: 1px solid gray;"><center>상품
					아이디</center></th>
			<th bgcolor="#bbdefb" width="300" style="border: 1px solid gray;"><center>이벤트
					이름</center></th>
			<th bgcolor="#bbdefb" width="300" style="border: 1px solid gray;"><center>예약
					아이디</center></th>
			<th bgcolor="#bbdefb" width="300" style="border: 1px solid gray;"><center>호텔
					이름</center></th>
		</table>
	</tr>


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<hr />

</body>
</html>