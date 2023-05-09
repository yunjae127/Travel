<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 페이지</title>
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

	<div id="navbar">
		<nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
			<a class="navbar-brand" href="#" target="blank"><img
				src="./resources/img/logo3.png" width="85px" height="50px"><span
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
						href="index.jsp#fly">소개<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#top">패키지<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#chose">관광지 <span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#work">숙소<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#gallery">할인<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#blog">리뷰<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="contact.html">Contact us<span class="sr-only">(current)</span></a>
					</li>
					<div class="btn-group">
						<button type="button"
							class="btn btn-outline-primary dropdown-toggle mr-1"
							data-toggle="modal" aria-haspopup="true" aria-expanded="false"
							data-target="#search">Search</button>
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

	<div class="container mt-5" id="blog">
		<div class="card-deck mt-3">
			<div class="card cardstyle">

				<div class="card-header">리뷰를 작성해 주세요!</div>
				
				<div class="card-body">
				 <div class="flex-container">
  <div class="wrapper">
    <h2>FileReader</h2>
    <img src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg" class="image-box" />
    <label for="file" class="upload-btn">
      <input id="file" type="file" accept="image/*" />
      <span>Upload Image</span>
    </label>
  </div>
   
</div>

					<h5 class="card-title">
									<span class="float-left">admin</span> <span class="float-left">&nbsp;&nbsp;2023-05-09</span>

								</h5>
							</div>
							<input type="text" name="reviewcontent" id="reviewcontent"
								class="reviewcontent" />


							<div class="card-footer text-muted">
								<a href="view.html" class="btn btn-primary">리뷰 작성</a>
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
</body>
</html>